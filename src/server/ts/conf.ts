export = {
  default: {
    cassandra: {
      contactPoints: ['127.0.0.1'],
      keyspace: 'timewall'
    },
    elasticsearch: {
      host: '127.0.0.1',
      port: 9200,
      index: {
        event: 'event'
      }
    },
    port: 6080,
    log: {
      enabled: true
    }
  },

  prod: {},

  tests: {
    cassandra: {
      keyspace: "teststimewall"
    },
    elasticsearch: {
      index: {
        event: 'testsevent'
      }
    },
    port: 7080,
    log: {
      enabled: false
    }
  }
};
