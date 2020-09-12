#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include <stdio.h>
#include "error.h"


// The kernel recieves 3 arguments, the first being global address (GPU) of
// where it must store the result. This has to be done because the kernel cant
// return any value. The arguments it recieves are managed by CUDA driver and
// possibly stored in constant memory (right?). A kernel supports all common
// operators along with various math functions.
__global__ void kernel(int *c, int a, int b) {
  *c = a + b;
}


// 1. Integers "a", "b" are defined in host memory (CPU).
// 2. Memory for storing their sum is allocated on device memory (GPU).
// 3. Sum is computed by the kernel, with one thread (async).
// 4. Wait for kernel to complete, then copy the sum to host memory (cHost).
// 5. Free the space we had occupied (we are good people).
int main() {
  int a = 1, b = 2; // 1
  int cHost, *cDevice;                      // 2
  TRY( cudaMalloc(&cDevice, sizeof(int)) ); // 2
  kernel<<<1, 1>>>(cDevice, a, b); // 3
  TRY( cudaMemcpy(&cHost, cDevice, sizeof(int), cudaMemcpyDeviceToHost) ); // 4
  TRY( cudaFree(cDevice) ); // 5
  printf("a = %d, b = %d\n", a, b);
  printf("a + b = %d (GPU)\n", cHost);
  return 0;
}
