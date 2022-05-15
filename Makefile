
all: help

help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

re: install test ## rebuild binaries and run tests

wait:
	sleep 3

install: ## install binaries
	clear
	go install ./...

test: ## test
	go test ./...

