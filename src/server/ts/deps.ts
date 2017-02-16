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

  getApp(): App { return null; }
  getSuperCommands(): SuperCommands { return null; }
  getNativeCassandraClient(): any { return null; }
  getRootNativeCassandraClient(): any { return null; }
  getRootCassandraClient(): CassandraClient { return null; }
  getCassandraClient(): CassandraClient { return null; }
  getAPI(): API { return null; }
  getDB(): DB { return null; }
}

export = DI;
