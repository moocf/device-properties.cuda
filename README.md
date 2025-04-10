The properties of a compute device can used for knowing how much memory
and what capabilities the device has.

```c
1. Check how many compute devices are attached.
2. List some properties of each device.
```

```bash
$ nvcc -std=c++17 -Xcompiler -O3 main.cu
$ ./a.out

# COMPUTE DEVICE 0:
# Name: NVIDIA Tesla V100-PCIE-16GB
# Compute capability: 7.0
# Multiprocessors: 80
# Clock rate: 1380 MHz
# Global memory: 16160 MB
# Constant memory: 64 KB
# Shared memory per block: 48 KB
# Registers per block: 65536
# Threads per block: 1024 (max)
# Threads per warp: 32
# Block dimension: 1024x1024x64 (max)
# Grid dimension: 2147483647x65535x65535 (max)
# Device copy overlap: yes
# Kernel execution timeout: no
```

See [main.cu] for code.

[main.cu]: main.cu

<br>
<br>


## References

- [CUDA by Example :: Jason Sanders, Edward Kandrot](https://gist.github.com/wolfram77/72c51e494eaaea1c21a9c4021ad0f320)

![](https://ga-beacon.deno.dev/G-G1E8HNDZYY:v51jklKGTLmC3LAZ4rJbIQ/github.com/moocf/device-properties.cuda)
