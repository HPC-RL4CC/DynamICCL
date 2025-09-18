source /home/cc/autoccl/.venv/bin/activate

torchrun --nproc_per_node $1 $2 

