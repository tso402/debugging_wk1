=begin
def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    n -= 1
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
  end
  product
end
=end

def factorial(n)
  product = n
  p "at the start product is #{product}"
  while n > 1
    n -= 1
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
  end
puts  product
end

factorial(4)
