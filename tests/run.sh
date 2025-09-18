#source /home/cc/autoccl/.venv/bin/activate
#source /home/cc/python_venv/bin/activate
source $1

LIB_PATH=../lib

export LD_PRELOAD=/home/cc/nccl/build/lib/libnccl.so:$LD_PRELOAD
export LD_LIBRARY_PATH=$LIB_PATH:$LD_LIBRARY_PATH
export NCCL_DEBUG=TRACE
export NCCL_DEBUG_SUBSYS=ALL
#export NCCL_DEBUG_SUBSYS=INIT
export NCCL_TUNER_PLUGIN=$2
export NCCL_TUNER_CONFIG_FILE=../utils/nccl_tuner.conf

torchrun --nproc_per_node 4 ./python/00_single_AllReduce_torch.py

