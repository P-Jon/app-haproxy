UK_PARENT_DIR ?= $(PWD)/../..
UK_ROOT ?= $(UK_PARENT_DIR)/unikraft
UK_LIBS ?= $(UK_PARENT_DIR)/libs

LIBS := $(UK_LIBS)/haproxy:$(UK_LIBS)/pthread-embedded:$(UK_LIBS)/lwip:$(UK_LIBS)/libslz:$(UK_LIBS)/libuuid:$(UK_LIBS)/newlib

all:
	@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS)

$(MAKECMDGOALS):
	@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS) $(MAKECMDGOALS)
