include docker.mk

.PHONY: test

RUBY_VER ?= 3.4

test:
	cd ./tests && RUBY_VER=$(RUBY_VER) ./run.sh
