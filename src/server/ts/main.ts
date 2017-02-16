require('source-map-support').install();

import DI = require('./deps');
import ProdDI = require('./prod_deps');
import Util = require('./util');

async function main(di: DI) {
  try {
    var app = di.getApp();
    var server = await Util.startApp(app.createExpressApp(), di.getConfig().port);
    console.log(server.address());
  } catch (e) {
    console.error(e.stack);
  }
}

var di = new ProdDI();
main(di)
