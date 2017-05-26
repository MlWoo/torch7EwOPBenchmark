require 'sys'   
local  msize = 1000
local cycle = 10

tms =  sys.tic()
   for t = 1, cycle do
       for dim = 1, 3 do
          local x = torch.rand(13, msize, msize):transpose(1, dim)
          local y = torch.rand(17, msize, msize):transpose(1, dim)
          local mx = torch.cat(x, y, dim)
          local mxx = torch.Tensor()
          torch.cat(mxx, x, y, dim)
       end
   end
tmi = sys.toc()/cycle
print("time cost =   " , tmi)
