SHELL := /bin/bash
BIN = $(shell yarn bin)

all: test build
.PHONY: all

build: test
	yarn build

test:
	yarn test
	
