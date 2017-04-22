CLIENT_OUT=build/client/js/app.js
CLIENT_DIR=src/client/ts
CLIENT_SRCS=$(shell find $(CLIENT_DIR) -type f)
SERVER_OUT=build/server/js
SERVER_DIR=src/server/ts
SERVER_SRCS=$(shell find $(SERVER_DIR) -type f)
STATIC_SRCDIR=src/client/static
STATIC_OUTDIR=build/client/
STATIC_SRCS=$(shell find $(STATIC_SRCDIR) -type f)
STATIC_OUTS=$(patsubst $(STATIC_SRCDIR)/%,$(STATIC_OUTDIR)/%,$(STATIC_SRCS))
TSC=node_modules/.bin/tsc
MOCHA=node_modules/.bin/mocha

all: build .tested

build: $(STATIC_OUTS) $(CLIENT_OUT) $(SERVER_OUT)

$(CLIENT_OUT): $(CLIENT_SRCS)
	mkdir -p $(shell dirname $(CLIENT_OUT))
	time $(TSC) -p $(CLIENT_DIR)

$(SERVER_OUT): $(SERVER_SRCS)
	mkdir -p $(SERVER_OUT)
	time $(TSC) -p $(SERVER_DIR)
	touch $(SERVER_OUT)

static: $(STATIC_OUTS)


$(STATIC_OUTS): $(STATIC_SRCS)
	mkdir -p $(STATIC_OUTDIR)
	cp -rf $(STATIC_SRCDIR)/* $(STATIC_OUTDIR)

test:
	$(MOCHA) build/server/js/tst/*.js

.tested: $(SERVER_OUT)
	make test
	@touch .tested

watch:
	trap 'kill -9 0; exit' SIGINT SIGTERM SIGHUP EXIT; \
	($(TSC) -w -p $(SERVER_DIR) &); \
	($(TSC) -w -p $(CLIENT_DIR) &); \
	while true; do \
		make -s static; \
		sleep 1; \
	done

clean:
	rm -rf build

.PHONY: all static build clean watch test
