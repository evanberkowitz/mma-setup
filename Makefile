SUBDIRECTORIES := $(wildcard */.)

all: $(SUBDIRECTORIES)

$(SUBDIRECTORIES):
	$(MAKE) -C $@

.PHONY: all $(SUBDIRECTORIES)
