all: push

TAG = latest
PREFIX = sgdreamer7/node-prometheus
DOCKER_REGISTRY = docker.io

container:
	docker build --pull -t $(PREFIX):$(TAG) .

push: container
	docker push $(PREFIX):$(TAG)

run-in-cluster:
	kubectl apply -f k8s.yaml

remove-from-cluster:
	kubectl delete -f k8s.yaml
