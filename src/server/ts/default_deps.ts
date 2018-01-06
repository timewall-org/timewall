import cassandra = require('cassandra-driver');

import DI = require('./deps');
import App = require('./app');
import DB = require('./db');
import SuperCommands = require('./supercommands');
import ElasticSearchClient = require('./esclient');
import { API } from './api';
import Util = require('./util');

import config = require('./conf');

class DefaultDI extends DI {
  createApp(): App { return new App(this) };
  createSuperCommands(): SuperCommands { return new SuperCommands(this); }
  createCassandraClient(): cassandra.Client { 
    return new cassandra.Client({ contactPoints: this.getConfig().cassandra.contactPoints }); 
  }
  createElasticSearchClient(): ElasticSearchClient { return new ElasticSearchClient(this); }
  createAPI(): API { return new API(this); }
  createDB(): DB { return new DB(this); }
}

export = DefaultDI;
