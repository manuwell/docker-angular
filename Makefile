CURRENT_DIR  = $(shell pwd)

ANGULAR_IMAGE_NAME = angular-sample-app
APP_ROOT = /app
DOCKER_FLAGS = --rm -ti --volume=$(CURRENT_DIR):/app:rw \
  --workdir=$(APP_ROOT) --env='HOME=$(APP_ROOT)' \
  -p '4200:4200' -p '49152:49152' \
  --stop-signal SIGINT


RUNNER_BIN = docker run $(DOCKER_FLAGS) $(ANGULAR_IMAGE_NAME) bin/runner
NODE_BIN   = $(RUNNER_BIN) node
NPM_BIN    = $(RUNNER_BIN) npm
NG_BIN     = $(RUNNER_BIN) ng

ishell:
	docker run -it $(DOCKER_FLAGS) $(ANGULAR_IMAGE_NAME) bash

build_angular_docker:
	docker build --tag=$(ANGULAR_IMAGE_NAME) .

setup:
	make build_angular_docker
	$(NPM_BIN) install
	echo "Load the environment by running: \n -> source functions.sh"

run:
	$(RUNNER_BIN) '$(CMD)'
