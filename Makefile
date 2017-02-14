CLIENT_OUT=build/client/js/app.js
CLIENT_DIR=src/client/js
CLIENT_SRCS=$(shell find $(CLIENT_DIR) -type f)
SERVER_OUT=build/server/js
SERVER_DIR=src/server/ts
SERVER_SRCS=$(shell find $(SERVER_DIR) -type f)
STATIC_SRCDIR=src/client/static
STATIC_OUTDIR=build/client/
STATIC_SRCS=$(shell find $(STATIC_SRCDIR) -type f)
STATIC_OUTS=$(patsubst $(STATIC_SRCDIR)/%,$(STATIC_OUTDIR)/%,$(STATIC_SRCS))

all: $(STATIC_OUTS) $(CLIENT_OUT) $(SERVER_OUT)

$(CLIENT_OUT): $(CLIENT_SRCS)
	mkdir -p $(shell dirname $(CLIENT_OUT))
	time babel --presets latest,react $(CLIENT_DIR) --source-maps --out-file $(CLIENT_OUT)

$(SERVER_OUT): $(SERVER_SRCS)
	mkdir -p $(SERVER_OUT)
	time tsc -p $(SERVER_DIR)
	touch $(SERVER_OUT)

$(STATIC_OUTS): $(STATIC_SRCS)
	mkdir -p $(STATIC_OUTDIR)
	cp -rf $(STATIC_SRCDIR)/* $(STATIC_OUTDIR)

clean:
	rm -rf build

.PHONY: all clean
