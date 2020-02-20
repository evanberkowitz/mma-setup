SUBDIRECTORIES := $(wildcard */.)

all: $(SUBDIRECTORIES)

$(SUBDIRECTORIES):
	$(MAKE) -C $@

uninstall:
	@for package in $(SUBDIRECTORIES); do pushd $$package; $(MAKE) uninstall; popd; done

.PHONY: all $(SUBDIRECTORIES) uninstall
