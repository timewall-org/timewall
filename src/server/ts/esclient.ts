var http = require('http');
import DI = require('./deps');
import Util = require('./util');

class ElasticSearchClient {
	constructor(public di: DI) {}

	request (method: string, path: string, data: string): Promise<any> {
		var resolve, reject;
		var p = new Promise((f1, f2) => { resolve = f1; reject = f2; });

    var fullpath = path+"?filter_path=errors,took,hits&ignore_indices=missing";
		var opts = {
				hostname: this.di.getConfig().elasticsearch.host,
				port: this.di.getConfig().elasticsearch.host,
				path: fullpath,
				method: method,
				headers: {}
		};

		var body: string = null;

		if (data) {
			var body = JSON.stringify(data);
			opts.headers = { "Content-Length": body.length };
		}

		var req = http.request(opts, (res) => {
				res.setEncoding('utf8');
				var str = '';
				res.on('data', (data) => {
						str += data;
				});

				res.on('end', () => {
						try {
							var json = JSON.parse(str);
							if (json && (json.error || json.errors)) {
                var errstring = JSON.stringify(json);
                var err = new Error("Elasticsearch failed: "+errstring);
                (err as any).json = json;
								reject(err);
							} else {
								resolve(json);
							}
						} catch (e) {
							reject (new Error("Cannot parse elasticsearch response "+str));
						}
				});
		});

		req.on('error', (e) => {
				reject(e);
		});

		if (body) {
			req.write(body);
		}
		req.end();

		return p;
	}

	async get(path, data) {
		return await this.request("GET", path, data);
	}

	async post(path, data) {
		return await this.request("POST", path, data);
	}

	async put(path, data) {
		return await this.request("PUT", path, data);
	}

	async del(path) {
    try {
      await this.request("DELETE", path, null);
    } catch (e) {
      if (!(e.json && e.json.status === 404)) {
        throw e;
      }
    }
	}

	async search (path, query) {
		var res = await this.get(`${path}/_search`, query);
		return res;
	}

  async create (path, doc) {
    var res = await this.put(`${path}/_create`, doc);
		return res;
  }

	async update(path, doc) {
		var req = {
			doc: doc,
			doc_as_upsert: true
		};

		var res = await this.post(`${path}/_update`, req);
		return res;
	}
};

export = ElasticSearchClient;
