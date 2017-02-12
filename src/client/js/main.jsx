class Main {
  constructor() {
    this.app = <App />
  }

  mount(node) {
    ReactDOM.render(
      this.app,
      node
    )
  }
}
