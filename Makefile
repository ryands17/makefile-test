SHELL := /bin/bash
BIN = $(shell yarn bin)

all: install_deps test_lint build
.PHONY: all

build: test_lint
	yarn build

test_lint: install_deps
	yarn lint & yarn test

install_deps:
	yarn --frozen-lockfile
