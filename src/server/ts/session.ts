import {Request, Response} from "express";

class Session {
  session: any;

  constructor(public name: string, public req: Request, public res: Response) {}

  get() {
    if (!this.session && this.req.cookies[this.name]) {
      this.session = JSON.parse(this.req.cookies[this.name]);
    }
    return this.session || {};
  }

  set(value: any) {
    this.session = value;
    if (!value) {
      this.res.clearCookie(this.name);
    } else {
      this.res.cookie(this.name, JSON.stringify(value));
    }
  }
}

export = Session;