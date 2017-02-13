import App = require('./app');

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

  getExpressApp() {
    return this.getInstance("expressApp", () => {
      return new App().createApp();
    });
  }
}

export = DI;
