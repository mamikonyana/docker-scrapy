PACKAGE = arsen/scrapy
TAG := dev

build:
	docker build --rm -t ${PACKAGE}:${TAG} .
.PHONY: build
