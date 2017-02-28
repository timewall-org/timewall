import DI = require('./deps');

class SuperCommands {
  constructor(public di: DI) {}

  async upgradeV0() {
    await this.createCassandraKeyspace();
    await this.createCassandraSchema();
    await this.createElasticSearchIndex();
  }

  async createCassandraKeyspace() {
    var rootcs = this.di.getRootCassandraClient();
    var keyspace = this.di.getConfig().cassandra.keyspace;

    await rootcs.execute(`
      CREATE KEYSPACE ${keyspace} WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 } AND DURABLE_WRITES = true;
    `);
  }

  async createCassandraSchema() {
    var cs = this.di.getCassandraClient();

    await cs.execute(`
      CREATE TYPE Histamp (
        value bigint
      )
    `);

    await cs.execute(`
      CREATE TYPE Geopoint (
        lon double,
        lat double
      )
    `);

    await cs.execute(`
      CREATE TYPE Location (
        name text,
        point frozen<Geopoint>,
        url text
      )
    `);

    await cs.execute(`
      CREATE TABLE Event (
        id timeuuid,
        location frozen<Location>,
        startTime frozen<Histamp>,
        endTime frozen<Histamp>,
        content text,
        primary key (id)
      )
    `);
  }

  async dropCassandraKeyspace() {
    var cs = this.di.getRootCassandraClient();
    var keyspace = this.di.getConfig().cassandra.keyspace;
    await cs.execute(`DROP KEYSPACE ${keyspace}`);
  }

  async dropElasticSearchIndex() {
    var es = this.di.getElasticSearchClient();
    var event = this.di.getConfig().elasticsearch.index.event;
    var index = `${event}-v1`;

    await es.post('/_aliases', {
      "actions" : [
        { "remove" : { "index" : index, "alias" : event } }
      ]
    });
    await es.del(index);
  }

  async createElasticSearchIndex() {
    var es = this.di.getElasticSearchClient();
    var event = this.di.getConfig().elasticsearch.index.event;
    var index = `${event}-v1`;
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
        { "add" : { "index" : index, "alias" : event } }
      ]
    });
  }
}

export = SuperCommands;
