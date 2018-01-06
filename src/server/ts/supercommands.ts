import DI = require('./deps');
import cassandra = require('cassandra-driver');

class SuperCommands {
  cs: cassandra.Client;
  keyspace: string;
  
  constructor(public di: DI) {
    this.cs = di.getCassandraClient();
    this.keyspace = this.di.getConfig().cassandra.keyspace;
  }

  async upgradeV0() {
    await this.createCassandraKeyspace();
    await this.createCassandraSchema();
    await this.createElasticSearchIndex();
  }

  async createCassandraKeyspace() {
    await this.cs.execute(`
      CREATE KEYSPACE ${this.keyspace} WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 } AND DURABLE_WRITES = true;
    `);
  }

  async createCassandraSchema() {
    var cs = this.di.getCassandraClient();

    await cs.execute(`
      CREATE TYPE ${this.keyspace}.Histamp (
        value bigint
      )
    `);

    await cs.execute(`
      CREATE TYPE ${this.keyspace}.Geopoint (
        lon double,
        lat double
      )
    `);

    await cs.execute(`
      CREATE TYPE ${this.keyspace}.Location (
        name text,
        point frozen<${this.keyspace}.Geopoint>,
        url text
      )
    `);

    await cs.execute(`
      CREATE TABLE ${this.keyspace}.Event (
        id timeuuid,
        location frozen<${this.keyspace}.Location>,
        startTime frozen<${this.keyspace}.Histamp>,
        endTime frozen<${this.keyspace}.Histamp>,
        content text,
        primary key (id)
      )
    `);
  }

  async dropCassandraKeyspace() {
    await this.cs.execute(`DROP KEYSPACE ${this.keyspace}`);
  }

  async dropElasticSearchIndex() {
    var es = this.di.getElasticSearchClient();
    var alias = this.di.getConfig().elasticsearch.index.event;
    var index = `${alias}-v1`;

    await es.post('/_aliases', {
      "actions" : [
        { "remove" : { "index" : index, "alias" : alias } }
      ]
    });
    await es.del(index);
  }

  async createElasticSearchIndex() {
    var es = this.di.getElasticSearchClient();
    var alias = this.di.getConfig().elasticsearch.index.event;
    var index = `${alias}-v1`;
    await es.put(index, {
      "settings": {
        "index": {
          "number_of_shards": 3,
          "number_of_replicas": 1,
          "mapper.dynamic": false
        }
      },
      "mappings": {
        "event": {
          "dynamic": false,
          "_source": { "enabled": false },
          "_all": { "enabled": false },
          "properties": {
            "creationTime": { "type": "long" },
            "point": { "type": "geo_point" },
            "content": { "type": "text" },
            "startTime": { "type": "long" },
            "endTime": { "type": "long" }
          }
        }
      }
    });

    await es.post('/_aliases', {
      "actions" : [
        { "add" : { "index" : index, "alias" : alias } }
      ]
    });
  }
}

export = SuperCommands;
