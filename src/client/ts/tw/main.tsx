import React from "react";
import ReactDOM from "react-dom";
import App from "./app";

export class Main {
  private app: any;

  constructor() {
    this.app = <App />;
  }

  mount(node: Element) {
    ReactDOM.render(
      this.app,
      node
    )
  }
}
