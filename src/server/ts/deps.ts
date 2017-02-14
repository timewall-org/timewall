const cassandra = require('cassandra-driver');

import App = require('./app');
import SuperCommands = require('./supercommands');
import CassandraClient = require('./csclient');
import config = require('./conf');

// Anti-magic sane dependency injection
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

  getConfig() {
    return this.getInstance("config", () => config);
  }

  getExpressApp() {
    return this.getInstance("expressApp", () => new App(this).createApp());
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
}

export = DI;
