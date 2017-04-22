import cassandra = require('cassandra-driver');

import App = require('./app');
import SuperCommands = require('./supercommands');
import CassandraClient = require('./csclient');
import ElasticSearchClient = require('./esclient');
import DB = require('./db');
import Util = require('./util');
import { API } from './api';

import config = require('./conf');

// Sane, simple container for dependency injection
class DI {
  env: string;
  instances: { [key:string]:any };

  constructor(env: string) {
    this.env = env;
    this.instances = {} as any;
  }

  getInstance<T>(name: string, f: () => T): T {
    if (!this.instances[name]) {
      this.instances[name] = f();
    }
    return this.instances[name];
  }

  getConfig(): typeof config.default { return this.getInstance("config", () => this.createConfig()); }
  getApp(): App { return this.getInstance("app", () => this.createApp()); }
  getSuperCommands(): SuperCommands { return this.getInstance("superCommands", () => this.createSuperCommands()); }
  getNativeCassandraClient(): any { return this.getInstance("nativeCassandraClient", () => this.createNativeCassandraClient()); }
  getRootNativeCassandraClient(): any { return this.getInstance("rootNativeCassandraClient", () => this.createRootNativeCassandraClient()); }
  getRootCassandraClient(): CassandraClient { return this.getInstance("rootCassandraClient", () => this.createRootCassandraClient()); }
  getCassandraClient(): CassandraClient { return this.getInstance("cassandraClient", () => this.createCassandraClient()); }
  getElasticSearchClient(): ElasticSearchClient { return this.getInstance("elasticSearchClient", () => this.createElasticSearchClient()); }
  getAPI(): API { return this.getInstance("api", () => this.createAPI()); }
  getDB(): DB { return this.getInstance("db", () => this.createDB()); }

  createConfig(): typeof config.default {
    var newconfig = Util.deepCloneJSON(config.default);
    Util.deepObjectOverride(newconfig, (config as any)[this.env] || {});
    return newconfig;
  }
  createApp(): App { return null as any; }
  createSuperCommands(): SuperCommands { return null as any; }
  createNativeCassandraClient(): any { return null as any; }
  createRootNativeCassandraClient(): any { return null as any; }
  createRootCassandraClient(): CassandraClient { return null as any; }
  createCassandraClient(): CassandraClient { return null as any; }
  createElasticSearchClient(): ElasticSearchClient { return null as any; }
  createAPI(): API { return null as any; }
  createDB(): DB { return null as any; }
}

export = DI;
