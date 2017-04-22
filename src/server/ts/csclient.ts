import cassandra = require('cassandra-driver');

class CassandraClient {
  constructor (public csclient: cassandra.Client) {}

  execute(text: string, params: any[] = [], opts = { prepare: true }): Promise<cassandra.types.ResultSet> {
    return new Promise((resolve, reject) => this.csclient.execute(text, params, opts, (err, res) => {
      if (err) {
        reject(err);
      } else {
        resolve(res);
      }
    }));
  }
}

export = CassandraClient;
