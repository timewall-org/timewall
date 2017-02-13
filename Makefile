CLIENT_OUT=build/client/js/app.js
CLIENT_DIR=src/client/js
CLIENT_SRCS=$(shell find $(CLIENT_DIR) -type f)
SERVER_OUT=build/server/js
SERVER_DIR=src/server/js
SERVER_SRCS=$(shell find $(SERVER_DIR) -type f)
STATIC_OUT=build/client
STATIC_DIR=src/client/static
STATIC_SRCS=$(shell find $(STATIC_DIR) -type f)

all: $(CLIENT_OUT) $(STATIC_OUT) $(SERVER_OUT)

$(CLIENT_OUT): $(CLIENT_SRCS)
	mkdir -p $(shell dirname $(CLIENT_OUT))
	time babel --presets latest,react $(CLIENT_DIR) --source-maps --out-file $(CLIENT_OUT)

$(SERVER_OUT): $(SERVER_SRCS)
	mkdir -p $(SERVER_OUT)
	time tsc --outDir $(CURDIR)/$(SERVER_OUT) -p $(SERVER_DIR)
	touch $(SERVER_OUT)

$(STATIC_OUT): $(STATIC_SRCS)
	mkdir -p $(STATIC_OUT)
	cp -rf $(STATIC_DIR)/* $(STATIC_OUT)
	touch $(STATIC_OUT)

clean:
	rm -rf build

.PHONY: all clean
