import DI = require('./deps');

class SuperCommands {
  constructor(public di: DI) {}

  async upgrade() {
    await this.createCassandraKeyspace();
    await this.createCassandraSchema();
  }

  async createCassandraKeyspace() {
    var rootcs = this.di.getRootCassandraClient();

    await rootcs.execute(`
      CREATE KEYSPACE "timewall" WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 } AND DURABLE_WRITES = true;
    `);
  }

  async createCassandraSchema() {
    var cs = this.di.getCassandraClient();

    await cs.execute(`
      CREATE TYPE geopoint (
        lng double,
        lat double
      )
    `);

    await cs.execute(`
      CREATE TYPE location (
        name text,
        loc frozen<geopoint>,
        url text
      )
    `);

    await cs.execute(`
      CREATE TABLE event (
        id timeuuid,
        location frozen<location>,
        start_time bigint,
        end_time bigint,
        content text,
        primary key (id)
      )
    `);
  }
}

export = SuperCommands;
