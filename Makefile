APP_PATH=$(abspath .)
APP_NAME=$(notdir $(APP_PATH))
APP_CONFIG=app-spec.json

# default build recipe
all: image

# build required container image
image:
	@echo "Updating App Repository"
	git submodule update --remote -- repo
	@echo "Building container for $(APP_NAME)"
	docker build -t "apps/$(APP_NAME)" .


