import http = require('http');
import DI = require('./deps');
import Util = require('./util');

class ElasticSearchClient {
	constructor(public di: DI) {}

	request (method: string, path: string, data?: string): Promise<any> {
		var resolve: any, reject: any;
		var p = new Promise((f1, f2) => { resolve = f1; reject = f2; });

    var fullpath = path+"?filter_path=errors,took,hits";
		var opts = {
				hostname: this.di.getConfig().elasticsearch.host,
				port: this.di.getConfig().elasticsearch.port,
				path: fullpath,
				method: method,
				headers: {}
		};

		var body: string | null = null;

		if (data) {
			body = JSON.stringify(data);
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

	async get(path: string, data?: any) {
		return await this.request("GET", path, data);
	}

	async post(path: string, data: any) {
		return await this.request("POST", path, data);
	}

	async put(path: string, data: any) {
		return await this.request("PUT", path, data);
	}

	async del(path: string) {
    try {
      await this.request("DELETE", path);
    } catch (e) {
      if (!(e.json && e.json.status === 404)) {
        throw e;
      }
    }
	}

	async search (path: string, query: any) {
		var res = await this.get(`${path}/_search`, query);
		return res;
	}

  async create (path: string, doc: any) {
    var res = await this.put(`${path}/_create`, doc);
		return res;
  }

	async update(path: string, doc: any) {
		var req = {
			doc: doc,
			doc_as_upsert: true
		};

		var res = await this.post(`${path}/_update`, req);
		return res;
	}
};

export = ElasticSearchClient;
