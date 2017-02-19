export = {
  default: {
    cassandra: {
      contactPoints: ['127.0.0.1'],
      keyspace: 'timewall'
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
    port: 7080,
    log: {
      enabled: false
    }
  }
};
