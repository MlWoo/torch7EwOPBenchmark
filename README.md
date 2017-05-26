
# Torch7EwOPBenchmark
==========================================

The project is designed to test the running time of elementwise operations. A summary is provided in the section below.
Machine: `2-socket` x `22-cores Intel® Xeon® processor E5-2699 v4 CPU @ 2.20GHZ` + `Ubuntu 14.04 x86_64`

## Benchmark

__Torch__ is the main package in [Torch7](http://torch.ch) where data
structures for multi-dimensional tensors and mathematical operations
over these are defined. Additionally, it provides many utilities for
accessing files, serializing objects of arbitrary types and other
useful utilities.

Torch 7 for __internal-user__ is the branch of [Torch 7](https://github.com/MlWoo/torch7)
created by MlWoo in order to speed up the elementwise operations such as copy, cadd, adds
and so on on CPU platform.

Please check the test scripts if you want to know more specifical operation parameters.


|  Library      |      Opreations      |   times(MlWoo)  | times(official) |
|:-------------:|:--------------------:| ---------------:|:---------------:|
| openblas      |      cat             |     1.40        |      1.80       |
| openblas      |:--------------------:| ---------------:|:---------------:|

