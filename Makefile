include docker.mk

.PHONY: test

RUBY_VER ?= 2.6

test:
	cd ./tests && RUBY_VER=$(RUBY_VER) ./run.sh
