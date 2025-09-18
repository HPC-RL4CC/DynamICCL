
#include ../../makefiles/common.mk
SRCDIR   ?= $(abspath ../..)
BUILDDIR ?= $(SRCDIR)/lib
INCLUDE_DIR = $(SRCDIR)/include

SRC_FILES := $(wildcard *.c)
DST_DIR   := $(BUILDDIR)/test/unit/plugins

build: ${BUILDDIR}/libnccl-tuner-example.so

${BUILDDIR}/libnccl-tuner-example.so: ${SRC_FILES}
	@mkdir -p $(BUILDDIR)
	@printf "Compiling  %-35s > %s\n" $< $@
	$(CC) -I$(INCLUDE_DIR) -fPIC -shared -o $@ $^

clean:
	rm -f ${BUILDDIR}/*.so
