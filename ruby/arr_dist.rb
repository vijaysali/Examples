# Given set of arrays items breakdown array items based on 
# distribution value. distribution value is in terms of % 
# and it should be 100%. Desired output will be an array 
# of array elements with distributed value.
# Constraints: Needs to check for left out values from
# distribution.
def gen_val_dist(data, dist)
  if not dist.inject(:+) == 100
    raise "dist does not add up to 100"
  end

  result = []
  low    = 0
  high   = 0
  dist.each do |x|
    high  = low + ((data.size * (x/100.0)).ceil - 1)
    result << low.upto(high).map {|i| data[i] }
    low = high + 1
  end
  result
end

x = 1.upto(10).to_a
dist = [20, 40, 20, 20]
p gen_val_dist(x, dist)
