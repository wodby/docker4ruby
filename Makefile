include docker.mk

.PHONY: test

RUBY_VER ?= 3.2

test:
ifeq ($(RUBY_VER),3.2)
	@echo "No tests for now for Ruby 3.2"
else
	cd ./tests && RUBY_VER=$(RUBY_VER) ./run.sh
endif
