import DI = require('./deps');
import Util = require('./util');
import Model = require('./models/all');
import CassandraClient = require('./csclient');

const cassandra = require('cassandra-driver');

function check(cond) {
  if (!cond) {
    throw new Util.AppError(400, "Condition not met", "Invalid Request");
  }
}

function firstRow(res, userMessage) {
  if (!res.rows && !res.rows[0]) {
    throw new Util.AppError(404, "Row not found", userMessage);
  }
  return res.rows[0];
}

class DB {
  cs: CassandraClient;

  constructor(public di: DI) {
    this.cs = di.getCassandraClient();
  }

  async insertEvent(event: Model.Event) {
    check(event.isValid());
    await this.cs.execute("INSERT INTO event JSON ?", [JSON.stringify(event)]);
  }

  async getEvent(id: any): Promise<Model.Event> {
    var res = await this.cs.execute("SELECT * FROM event WHERE id = ?", [id]);
    var data = firstRow(res, "Event not found");
    return new Model.Event().fromCassandra(data);
  }
}

export = DB;
