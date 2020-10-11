The properties of a compute device, which can used for knowing how much memory
and what capabilities the device has.

```c
1. Check how many compute devices are attached.
2. List some properties of each device.
```

```bash
# OUTPUT
COMPUTE DEVICE 0:
Name: GeForce RTX 2070 SUPER
Compute capability: 7.5
Multiprocessors: 40
Clock rate: 1770 MHz
Global memory: 8192 MB
Constant memory: 64 KB
Shared memory per block: 48 KB
Registers per block: 65536
Threads per block: 1024 (max)
Threads per warp: 32
Block dimension: 1024x1024x64 (max)
Grid dimension: 2147483647x65535x65535 (max)
Device copy overlap: yes
Kernel execution timeout: yes
```

See [main.cu] for code, [main.ipynb] for notebook.

[main.cu]: main.cu
[main.ipynb]: https://colab.research.google.com/drive/1LPA9kjKXCF7O-NdZ9G7tF4QJy_V977Op?usp=sharing


### references

- [CUDA by Example :: Jason Sanders, Edward Kandrot](http://www.mat.unimi.it/users/sansotte/cuda/CUDA_by_Example.pdf)
