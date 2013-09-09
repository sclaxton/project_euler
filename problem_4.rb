require "benchmark"

def is_int_pal? n 
  str = "#{n}"
  return str == str.reverse 
end

# This function produces an array used to generate the products of  
# of two n-digit numbers in order from (x - floor(m/2))*(x-ceil(m/2)) 
# down to (x -floor(k/2))*(x - ceil(k/2)), where x is an n-digit
# number and m > k. 
# It is based on a heuristic that came out of a pattern I noticed by
# manually ordering products of two three digit numbers by magnitude.
# However the heuristic can be made rigorous and the validity of the
# series can easily be proven by mathematical induction. 
def pairs(m, k)
  pairs = []
  sum = m
  i = 0 
  j = 0 
  while sum < k  
    i = sum/2
    j = ((sum.to_f)/2).ceil.to_i
    while i >= 0  
      pairs.push({:i => i, :j => j})
      i -= 1
      j += 1
    end
    sum += 1
  end 
  return pairs
end 

def threebythree_pal  
  m = 0 
  k = 1
  stop = false
  while !stop
    pairs = pairs(m,k)
    for pair in pairs
      n = (999 - pair[:i])*(999 - pair[:j])
      if (is_int_pal?(n))
        puts n
        stop = true
        break
      end
    end 
    m += 1
    k += 1
  end   
end 

Benchmark.bm(7) do |x|
  x.report("largest palindrome:")   { threebythree_pal }
end
