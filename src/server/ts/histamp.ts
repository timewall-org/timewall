class Histamp {
  constructor(public value: number) {}

  toJSON() {
    return this.value;
  }

  toString() {
    return this.value.toString();
  }
}

export = Histamp;
