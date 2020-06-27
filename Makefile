SHELL := /bin/bash
BIN = $(shell yarn bin)

all: test_lint build
.PHONY: all

build: test_lint
	yarn build

test_lint:
	yarn lint & yarn test
