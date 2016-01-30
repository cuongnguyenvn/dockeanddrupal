# PRIVATE_REGISTRY_URL=registry.olbius.lan:5000

DOCKER_IMAGE=vchn/drupalapp
# VERSION=d7blank
# VERSION=d7source
VERSION=d7drush

all: build

build:
	docker build --tag=${DOCKER_IMAGE}:${VERSION} .

push:
	docker push ${DOCKER_IMAGE}:${VERSION}

build-for-private-registry:
	docker build --tag=${REGISTRY_URL}/${DOCKER_IMAGE}:${VERSION} .

push-for-private-registry:
	docker push ${PRIVATE_REGISTRY_URL}/${DOCKER_IMAGE}:${VERSION}

