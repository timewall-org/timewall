import DI = require('./deps');
import Util = require('./util');
import Model = require('./models/all');
import ElasticSearchClient = require('./esclient');

import cassandra = require('cassandra-driver');

function check(cond: boolean) {
  if (!cond) {
    throw new Util.AppError(400, "Condition not met", "Invalid Request");
  }
}

function firstRow(res: cassandra.types.ResultSet) {
  var first = res.rows[0];
  if (!first) {
    throw new Util.AppError(404, "Not found", "Not found");
  }
  return first;
}

class DB {
  cs: cassandra.Client;
  es: ElasticSearchClient;
  csKeyspace: string;
  esEventPath: string;

  constructor(public di: DI) {
    this.cs = di.getCassandraClient();
    this.es = di.getElasticSearchClient();
    this.csKeyspace = this.di.getConfig().cassandra.keyspace;
    this.esEventPath = di.getConfig().elasticsearch.index.event+"/event";
  }

  async putEvent(event: Model.Event) {
    check(event.isValid());
    await this.cs.execute(`INSERT INTO ${this.csKeyspace}.event JSON ?`, [JSON.stringify(event)]);
    var esdoc = {
      creationTime: event.id.getDate().getTime(),
      startTime: event.startTime.value,
      endTime: event.endTime.value,
      content: event.content
    };
    await this.es.create(`${this.esEventPath}/${event.id.toString()}`, esdoc);
  }

  async getEvent(id: any): Promise<Model.Event> {
    var res = await this.cs.execute(`SELECT * FROM ${this.csKeyspace}.event WHERE id = ?`, [id]);
    return Model.Event.fromCassandra(firstRow(res));
  }

  async getLastEvents() {
    var query: any = {
      query: { match_all: {} },
      size: 10,
      sort: [
        { endTime: "desc" }
      ]
    };

    var res = await this.es.search(this.esEventPath, query);
    if (!(res && res.hits && res.hits.hits)) {
      return [];
    }

    var pros = [];
    for (var doc of res.hits.hits) {
      pros.push(this.getEvent(doc._id));
    }
    return await Promise.all(pros);
  }
}

export = DB;
