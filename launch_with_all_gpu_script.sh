sudo docker run -it \
   --network=host \
   --group-add=video \
   --ipc=host \
   --cap-add=SYS_PTRACE \
   --security-opt seccomp=unconfined \
   --device /dev/kfd \
   --device /dev/dri \
   -v /mnt/nvme0n1p1/hfmodels:/app/model \
   ghcr.io/embeddedllm/pytorch-rocm-flash-attn:rocm6.2.3-py3.10-pytorch2.5.0-flash-attn-v2.6.3-cktile
