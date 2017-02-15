const cassandra = require('cassandra-driver');

import DI = require('./deps');
import App = require('./app');
import SuperCommands = require('./supercommands');
import CassandraClient = require('./csclient');
import { API } from './api';

import config = require('./conf');

class ProdDI extends DI {
  getConfig() {
    return this.getInstance("config", () => config);
  }

  getApp() {
    return this.getInstance("expressApp", () => new App(this));
  }

  getSuperCommands() {
    return this.getInstance("superCommands", () => new SuperCommands(this));
  }

  getNativeCassandraClient() {
    return this.getInstance("nativeCassandraClient", () => new cassandra.Client(this.getConfig().cassandra));
  }

  getRootNativeCassandraClient() {
    var conf = {
      contactPoints: this.getConfig().cassandra.contactPoints
    };
    return this.getInstance("rootNativeCassandraClient", () => new cassandra.Client(conf));
  }

  getRootCassandraClient() {
    return this.getInstance("rootCassandraClient", () => new CassandraClient(this.getRootNativeCassandraClient()));
  }

  getCassandraClient() {
    return this.getInstance("cassandraClient", () => new CassandraClient(this.getNativeCassandraClient()));
  }

  getAPI() {
    return this.getInstance("api", () => new API(this));
  }
}

export = ProdDI;
