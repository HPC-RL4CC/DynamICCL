import os
import torch
import torch.distributed as dist

def main():
    # Init NCCL distributed backend
    dist.init_process_group(backend="nccl")

    rank = dist.get_rank()
    world_size = dist.get_world_size()
    torch.cuda.set_device(rank)
    
    if rank == 0:
        print(f"torch.__version__ : {torch.__version__}")
        print(f"torch.version.cuda : {torch.version.cuda}")

    # creating a tensor on GPU
    tensor = torch.ones(4, device=f"cuda:{rank}") * (rank + 1)

    print(f"[{rank}/{world_size}] Before AllReduce:\n {tensor}")

    # AllReduce Sum
    dist.all_reduce(tensor, op=dist.ReduceOp.SUM)

    print(f"[{rank}/{world_size}] After AllReduce:\n {tensor}")

    dist.destroy_process_group()

if __name__ == "__main__":
    main()

