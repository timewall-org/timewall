import cassandra = require('cassandra-driver');

import DI = require('./deps');
import App = require('./app');
import DB = require('./db');
import SuperCommands = require('./supercommands');
import CassandraClient = require('./csclient');
import ElasticSearchClient = require('./esclient');
import { API } from './api';
import Util = require('./util');

import config = require('./conf');

class DefaultDI extends DI {
  createApp(): App { return new App(this) };
  createSuperCommands(): SuperCommands { return new SuperCommands(this); }
  createNativeCassandraClient(): cassandra.Client { return new cassandra.Client(this.getConfig().cassandra); }
  createRootNativeCassandraClient(): cassandra.Client {
    var conf = Util.deepCloneJSON(this.getConfig().cassandra);
    delete conf.keyspace;
    return new cassandra.Client(conf);
  }
  createRootCassandraClient(): CassandraClient { return new CassandraClient(this.getRootNativeCassandraClient()); }
  createCassandraClient(): CassandraClient { return new CassandraClient(this.getNativeCassandraClient()); }
  createElasticSearchClient(): ElasticSearchClient { return new ElasticSearchClient(this); }
  createAPI(): API { return new API(this); }
  createDB(): DB { return new DB(this); }
}

export = DefaultDI;
