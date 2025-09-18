
SRCDIR  := $(abspath ..)
LIB_DIR := $(SRCDIR)/lib
#PLUGIN := $(LIB_DIR)/libnccl-tuner-basic.so
PLUGIN := $(LIB_DIR)/libnccl-tuner-example.so
PYTHON_VENV := /home/cc/python_venv/bin/activate

#export LD_PRELOAD := $$HOME/nccl/build/lib/libnccl.so:$$LD_PRELOAD
#export LD_LIBRARY_PATH := $(LIB_DIR):$$LD_LIBRARY_PATH
#export NCCL_DEBUG := TRACE
#export NCCL_DEBUG_SUBSYS := ALL
#export NCCL_TUNER_PLUGIN := $(LIB_DIR)/libnccl-tuner-basic.so


001: $(PLUGIN) ./run.sh ./python/00_single_AllReduce_torch.py
	@bash ./run.sh $(PYTHON_VENV) $(PLUGIN)

