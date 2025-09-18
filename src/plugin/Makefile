
#include ../../makefiles/common.mk
SRCDIR   ?= $(abspath ../..)
BUILDDIR ?= $(SRCDIR)/lib
INCLUDE_DIR = $(SRCDIR)/include

SRC_FILES := $(wildcard *.c)
DST_DIR   := $(BUILDDIR)/test/unit/plugins

build: ${BUILDDIR}/libnccl-tuner-basic.so

${BUILDDIR}/libnccl-tuner-basic.so: ${SRC_FILES}
	@mkdir -p $(BUILDDIR)
	@printf "Compiling  %-35s > %s\n" $< $@
	$(CC) -I$(INCLUDE_DIR) -fPIC -shared -o $@ $^

clean:
	rm -f ${BUILDDIR}/libnccl-tuner-basic.so
