i = 0
res = 0

while (i * 3) < 1000
  m_5 = 5 * i 
  m_3 = 3 * i 
  if m_5 < 1000
    res += m_5
  end
  if (m_3 % 5) != 0 
    res += m_3
  end 
  i += 1
end 

puts res

