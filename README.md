
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

Torch 7 for __internal-user__ is the branch of [Torch7](https://github.com/MlWoo/torch7)
created by MlWoo in order to speed up the elementwise operations such as copy, cadd, adds
and so on on CPU platform.

Please check the test scripts if you want to know more specifical operation parameters.


|  Library      |    Opreations     |   times(MlWoo)  | times(official) |
|:-------------:|:-----------------:|:---------------:|:---------------:|
| openblas      |      cat          |     1.40s       |      1.80s      |
| openblas      |:-----------------:|:---------------:|:---------------:|


## Note
I am sorry that the work is __temporary__ and ugly. More systmatic, smart and clean codes are working in process. Thanks for your concern.

## Prerequirement 

1.  Official Torch dependency.  
  Refer to https://github.com/torch/distro please.  
2.  internal-user Torch.      
   (1). Clone offcial Torch code in another path. Modify the folder name as XXX.  
   (2). using commands below to use interal_use torch package.
   ```bash
      cd /PATH/XXX/pkg/
      rm -rf torch
      git clone https://github.com/MlWoo/torch7.git torch -b internal-use
      cd ../
      ./install.sh
   ```

## How to run it

__**Note**:__ You must keep chill awareness to tell which torch is used to test the benchmark. Using `which th` to check the versrion of torch before testing is a good idea.

Using commands below to get the performance:
```bash 
th test_tmp.lua
```
