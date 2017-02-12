CLIENT_OUT=build/client/js/app.js
CLIENT_DIR=src/client/js
CLIENT_SRCS=$(shell find $(CLIENT_DIR) -type f)
STATIC_OUT=build/client/.stamp
STATIC_DIR=src/client/static
STATIC_SRCS=$(shell find $(STATIC_DIR) -type f)

all: $(CLIENT_OUT) $(STATIC_OUT)

$(CLIENT_OUT): $(CLIENT_SRCS)
	mkdir -p $(shell dirname $(CLIENT_OUT))
	babel --presets latest,react $(CLIENT_DIR) --source-maps --out-file $(CLIENT_OUT)

$(STATIC_OUT): $(STATIC_SRCS)
	mkdir -p $(shell dirname $(STATIC_OUT))
	cp -rf $(STATIC_DIR)/* $(shell dirname $(STATIC_OUT))/
	touch $(STATIC_OUT)

clean:
	rm -rf build

.PHONY: all clean
