source /home/cc/autoccl/.venv/bin/activate

LIB_PATH=../lib

export LD_PRELOAD=/home/cc/nccl/build/lib/libnccl.so:$LD_PRELOAD
export LD_LIBRARY_PATH=$LIB_PATH:$LD_LIBRARY_PATH
export NCCL_DEBUG=TRACE
export NCCL_DEBUG_SUBSYS=ALL
#export NCCL_DEBUG_SUBSYS=INIT
export NCCL_TUNER_PLUGIN=$LIB_PATH/libnccl-tuner-basic.so


torchrun --nproc_per_node 4 ./python/00_single_AllReduce_torch.py

