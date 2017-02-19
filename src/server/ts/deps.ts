const cassandra = require('cassandra-driver');

import App = require('./app');
import SuperCommands = require('./supercommands');
import CassandraClient = require('./csclient');
import DB = require('./db');
import Util = require('./util');
import { API } from './api';

import config = require('./conf');

// Sane, simple container for dependency injection
class DI {
  instances: [string][];

  constructor() {
    this.instances = {} as any;
  }

  getInstance<T>(name: string, f: () => T): T {
    if (!this.instances[name]) {
      this.instances[name] = f();
    }
    return this.instances[name];
  }

  overrideConfig(conf: typeof config): void {}

  getConfig(): typeof config {
    var newconfig = Util.deepCloneJSON(config);
    this.overrideConfig(newconfig);
    return this.getInstance("config", () => newconfig);
  }

  getApp(): App { return this.getInstance("app", () => this.createApp()); }
  getSuperCommands(): SuperCommands { return this.getInstance("superCommands", () => this.createSuperCommands()); }
  getNativeCassandraClient(): any { return this.getInstance("nativeCassandraClient", () => this.createNativeCassandraClient()); }
  getRootNativeCassandraClient(): any { return this.getInstance("rootNativeCassandraClient", () => this.createRootNativeCassandraClient()); }
  getRootCassandraClient(): CassandraClient { return this.getInstance("rootCassandraClient", () => this.createRootCassandraClient()); }
  getCassandraClient(): CassandraClient { return this.getInstance("cassandraClient", () => this.createCassandraClient()); }
  getAPI(): API { return this.getInstance("api", () => this.createAPI()); }
  getDB(): DB { return this.getInstance("db", () => this.createDB()); }

  createApp(): App { return null; }
  createSuperCommands(): SuperCommands { return null; }
  createNativeCassandraClient(): any { return null; }
  createRootNativeCassandraClient(): any { return null; }
  createRootCassandraClient(): CassandraClient { return null; }
  createCassandraClient(): CassandraClient { return null; }
  createAPI(): API { return null; }
  createDB(): DB { return null; }
}

export = DI;
