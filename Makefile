BUILD_DIR=build
CLIENT_OUT=$(BUILD_DIR)/client
CLIENT_DIR=src/client
CLIENT_DIR_TS=$(CLIENT_DIR)/ts
CLIENT_DIR_STATIC=$(CLIENT_DIR)/static
SERVER_OUT=$(BUILD_DIR)/server
SERVER_DIR=src/server/ts
TEST_DIR=tst/server/ts
TSC=node_modules/.bin/tsc
MOCHA=node_modules/.bin/mocha
NODE=node

all: build test

build: buildClient buildServer

buildClient: buildClientJs buildClientStatic

buildClientJs:
	$(TSC) -p $(CLIENT_DIR_TS)

buildClientStatic:
	cp -a $(CLIENT_DIR)/static/* $(CLIENT_OUT)/

buildServer:
	$(TSC) -p $(SERVER_DIR)

run:
	$(NODE) $(SERVER_OUT)/js/main.js

test:
	TS_NODE_PROJECT=$(TEST_DIR) $(MOCHA) --require ts-node/register --timeout 10000 $(TEST_DIR)/*.ts

watch:
	trap 'kill -9 0; exit' SIGINT SIGTERM SIGHUP EXIT; \
	($(TSC) -w -p $(SERVER_DIR) &); \
	($(TSC) -w -p $(CLIENT_DIR_TS) &); \
	while true; do \
		make -s buildClientStatic; \
		sleep 1; \
	done

clean:
	rm -rf build

.PHONY: all buildClient buildClientJs buildClientStatic buildServer run test watch clean
