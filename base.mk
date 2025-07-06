DOCKER := docker
IMAGE = $(file < TAG)
VERSION = $(file < VERSION)
TAG = $(IMAGE):$(VERSION)
DASH_TAG = $(IMAGE)-$(VERSION)

all: build upload-dockerhub

build:
	docker build --tag $(TAG) .

HUB := aatf
upload-dockerhub:
	$(DOCKER) tag $(TAG) $HUB)/$(TAG)
	$(DOCKER) push $(HUB)/$(TAG)(
