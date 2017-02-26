import DI = require('./deps');

class SuperCommands {
  constructor(public di: DI) {}

  async upgradeV0() {
    await this.createCassandraKeyspace();
    await this.createCassandraSchema();
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

  async truncateCassandraTables() {
    var cs = this.di.getCassandraClient();
    await cs.execute("TRUNCATE TABLE Event");
  }
}

export = SuperCommands;
