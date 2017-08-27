export interface Logger {
  info(...args: any[]): void;
  error(...args: any[]): void;
}

export class PrefixLogger implements Logger {
  constructor(public child: Logger, public prefix: any) {}

  info(...args: any[]) {
    this.child.info(this.prefix, ...args);
  }

  error(...args: any[]) {
    this.child.error(this.prefix, ...args);
  }
}

export class ConsoleLogger implements Logger {
  info() {
    console.info.call(this, arguments);
  }

  error() {
    console.error.call(this, arguments);
  }
}

export class NullLogger implements Logger {
  info() {}
  error() {}
}