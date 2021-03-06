import cassandra = require('cassandra-driver');

import App = require('./app');
import SuperCommands = require('./supercommands');
import ElasticSearchClient = require('./esclient');
import DB = require('./db');
import Util = require('./util');
import { API } from './api';

import config = require('./conf');
import {ConsoleLogger, Logger, NullLogger, PrefixLogger} from "./logger";

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
  getCassandraClient(): cassandra.Client { return this.getInstance("cassandraClient", () => this.createCassandraClient()); }
  getElasticSearchClient(): ElasticSearchClient { return this.getInstance("elasticSearchClient", () => this.createElasticSearchClient()); }
  getAPI(): API { return this.getInstance("api", () => this.createAPI()); }
  getDB(): DB { return this.getInstance("db", () => this.createDB()); }
  getLogger(prefix: any): Logger {
    var rootLogger = this.getInstance("rootLogger", () => this.createRootLogger());
    return new PrefixLogger(rootLogger, prefix);
  }

  createConfig(): typeof config.default {
    var newconfig = Util.deepCloneJSON(config.default);
    Util.deepObjectOverride(newconfig, (config as any)[this.env] || {});
    return newconfig;
  }
  createApp(): App { return null as any; }
  createSuperCommands(): SuperCommands { return null as any; }
  createCassandraClient(): cassandra.Client { return null as any; }
  createElasticSearchClient(): ElasticSearchClient { return null as any; }
  createAPI(): API { return null as any; }
  createDB(): DB { return null as any; }
  createRootLogger(): Logger {
    if (this.getConfig().log.enabled) {
      return new ConsoleLogger();
    } else {
      return new NullLogger();
    }
  }
}

export = DI;
