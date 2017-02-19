const cassandra = require('cassandra-driver');

import DI = require('./deps');
import App = require('./app');
import DB = require('./db');
import SuperCommands = require('./supercommands');
import CassandraClient = require('./csclient');
import { API } from './api';
import Util = require('./util');

import config = require('./conf');

class DefaultDI extends DI {
  createApp() { return new App(this) };
  createSuperCommands() { return new SuperCommands(this); }
  createNativeCassandraClient() { return new cassandra.Client(this.getConfig().cassandra); }
  createRootNativeCassandraClient() {
    var conf = Util.deepCloneJSON(this.getConfig().cassandra);
    delete conf.keyspace;
    return new cassandra.Client(conf);
  }
  createRootCassandraClient() { return new CassandraClient(this.getRootNativeCassandraClient()); }
  createCassandraClient() { return new CassandraClient(this.getNativeCassandraClient()); }
  createAPI() { return new API(this); }
  createDB() { return new DB(this); }
}

export = DefaultDI;
