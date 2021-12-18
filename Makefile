include docker.mk

.PHONY: test

RUBY_VER ?= 2.7

test:
ifeq ($(RUBY_VER),"2.6")
	echo "skip tests because activesupport requires Ruby version >= 2.7.0";
else
	cd ./tests && RUBY_VER=$(RUBY_VER) ./run.sh
endif