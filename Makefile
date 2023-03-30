CONTAINER_TAG := ttc2otf

.PHONY: build run clean
build:
	docker build . --tag $(CONTAINER_TAG)
run:
	docker run --rm --interactive --tty --mount type=bind,source=$(CURDIR)/src,target=/home/src $(CONTAINER_TAG)
clean:
	docker rmi $(CONTAINER_TAG)
