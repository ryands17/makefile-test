SHELL := /bin/bash
BIN = $(shell yarn bin)

all: build
.PHONY: all

build: test_lint
	yarn build

test_lint: install_deps
	yarn test

install_deps:
	yarn --frozen-lockfile
