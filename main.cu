#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include <stdio.h>
#include "support.h"


// 1. Check how many compute devices are attached.
// 2. List some properties of each device.
int main() {
  int N;                         // 1
  TRY( cudaGetDeviceCount(&N) ); // 1

  cudaDeviceProp p;                        // 2
  for (int i=0; i<N; i++) {                // 2
    TRY( cudaGetDeviceProperties(&p, i) ); // 2
    printf("COMPUTE DEVICE %d:\n", i);
    printf("Name: %s\n", p.name);
    printf("Compute capability: %d.%d\n", p.major, p.minor);
    printf("Multiprocessors: %d\n", p.multiProcessorCount);
    printf("Clock rate: %d MHz\n", p.clockRate / 1000);
    printf("Global memory: %zd MB\n", p.totalGlobalMem / (1024*1024));
    printf("Constant memory: %zd KB\n", p.totalConstMem / 1024);
    printf("Shared memory per block: %zd KB\n", p.sharedMemPerBlock / 1024);
    printf("Registers per block: %d\n", p.regsPerBlock);
    printf("Threads per block: %d (max)\n", p.maxThreadsPerBlock);
    printf("Threads per warp: %d\n", p.warpSize);
    printf("Block dimension: %dx%dx%d (max)\n", p.maxThreadsDim[0], p.maxThreadsDim[1], p.maxThreadsDim[2]);
    printf("Grid dimension: %dx%dx%d (max)\n", p.maxGridSize[0], p.maxGridSize[1], p.maxGridSize[2]);
    printf("Device copy overlap: %s\n", p.deviceOverlap ? "yes" : "no");
    printf("Kernel execution timeout: %s\n", p.kernelExecTimeoutEnabled ? "yes" : "no");
    printf("\n");
  }
  return 0;
}
