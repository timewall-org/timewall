require('source-map-support').install();

import DI = require('./deps');

function main() {
  try {
    var di = new DI();
    var app = di.getExpressApp();
    var server = app.listen(9081, function () {
      var host = server.address().address;
      var port = server.address().port;
      console.log('http://%s:%s', host, port);
    });
  } catch (e) {
    console.error(e.stack);
  }
}

main()
