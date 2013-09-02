# the golden ratio used in the closed form of the Fibonacci sequence
$phi = (1 + Math.sqrt(5))/2

# closed form definition of Fibonacci 
def fib(n)
  ($phi ** n - (-1 * $phi) ** -n)/Math.sqrt(5)
end 

n = 1
res = 0 

# because odd + odd = even and the series begins with 1, 1, ...
# every third number is even 
while (x = fib(3 * n)) < 4000000
  res += x.to_i
  n += 1
end 

puts res
