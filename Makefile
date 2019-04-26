.PHONY: docker_build docker_run

REPO_NAME    := embulk-output-google-sheets
DOCKER_IMAGE := $(REPO_NAME)

docker_build:
	docker build -t $(DOCKER_IMAGE) .

docker_run:
	docker run --rm -it -v $(CURDIR):/embulk-output-google-sheets $(DOCKER_IMAGE)
