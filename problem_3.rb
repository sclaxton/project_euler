PRODUCT = 600851475143

def prime?(n)
  i = 2
  while i < Math.sqrt(n).to_i
    if (n % i) == 0
      return false
    end
    i += 1 
  end
  return true
end

# assumes n is an odd number 
def greatest_prime_factor(n)
  if (prime?(n))
    return n
  end
  i = 3
  while i < Math.sqrt(n).to_i
    if ( n % i == 0 )
      return greatest_prime_factor(n/i)
    end
    i += 2
  end
end
    
puts greatest_prime_factor(PRODUCT)
  


 

  
