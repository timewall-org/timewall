import DI = require('./deps');

class SuperCommands {
  constructor(public di: DI) {}

  async upgradeV0() {
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
      CREATE TYPE Geopoint (
        lng double,
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
        startTime bigint,
        endTime bigint,
        content text,
        primary key (id)
      )
    `);
  }
}

export = SuperCommands;
