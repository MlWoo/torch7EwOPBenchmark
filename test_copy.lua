
require 'sys'

local benchmarkTest = benchmark.TestSuite()
local m = 1000
local n = 1000
local k = 1000
local precision
local msize = 1000

local types = {
   'torch.ByteTensor',
   'torch.CharTensor',
   'torch.ShortTensor',
   'torch.IntTensor',
   'torch.FloatTensor',
   'torch.DoubleTensor',
   'torch.LongTensor',
}

local cycle = 100
local tms, tme, tmi

function benchmarkTest.cat()
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
   return tmi
end


function benchmarkTest.test(tests)
   torch.setheaptracking(true)
   math.randomseed(os.time())
   if torch.getdefaulttensortype() == 'torch.FloatTensor' then
      precision = 1e-4
   elseif  torch.getdefaulttensortype() == 'torch.DoubleTensor' then
      precision = 1e-8
   end
   mytester = torch.Tester()
   mytester:add(torchtest)
   mytester:run(tests)
   return mytester
end

