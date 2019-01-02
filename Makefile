all:
IMAGE_NAME = gcr.io/nocsonic-1165/will-simple-ng:latest
CONTAINER_NAME = web-ng-hosted-container

build:
	docker build -t $(IMAGE_NAME) .

run-prod-container:
	docker run --name $(CONTAINER_NAME) -d -p 5555:5555  $(IMAGE_NAME)


install:
	 gcloud docker --  push  $(IMAGE_NAME)



kubectl-run:
kubectl run $(CONTAINER_NAME) --image = $(IMAGE_NAME) --port=55550
