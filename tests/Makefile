
SRCDIR  := $(abspath ..)
LIB_DIR := $(SRCDIR)/lib
PLUGIN := $(LIB_DIR)/libnccl-tuner-basic.so
#export LD_PRELOAD := $$HOME/nccl/build/lib/libnccl.so:$$LD_PRELOAD
#export LD_LIBRARY_PATH := $(LIB_DIR):$$LD_LIBRARY_PATH
#export NCCL_DEBUG := TRACE
#export NCCL_DEBUG_SUBSYS := ALL
#export NCCL_TUNER_PLUGIN := $(LIB_DIR)/libnccl-tuner-basic.so


001: $(PLUGIN) ./00_single_AllReduce_torch.sh ./python/00_single_AllReduce_torch.py
	@bash ./00_single_AllReduce_torch.sh

