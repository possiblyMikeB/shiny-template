APP_PATH=$(abspath .)
APP_NAME=$(notdir $(APP_DIR))
APP_CONFIG=application-spec.json

# default build recipe
all: image

# build required container image
image:
	@echo "Building container for $(APP_NAME)"
	docker build -t apps/$(APP_NAME) .


