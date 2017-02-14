class CassandraClient {
  constructor (public csclient: any) {}

  execute(text, params = [], opts = {}): Promise<any> {
    return new Promise<any>((resolve, reject) => this.csclient.execute(text, params, opts, (err, res) => {
      if (err) {
        reject(err);
      } else {
        resolve(res);
      }
    }));
  }
}

export = CassandraClient;
