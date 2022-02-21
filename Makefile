include docker.mk

.PHONY: test

RUBY_VER ?= 3.1

test:
	cd ./tests && RUBY_VER=$(RUBY_VER) ./run.sh