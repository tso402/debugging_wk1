class FizzBuzz
  def play(number)
    return "fizzbuzz" if is_divisible_by(number, 15) # This statement should be before the fizz statement as the return causes no more statements to be executed
    return "fizz" if is_divisible_by(number, 3) # We are trying to pass the original arugment number so can't shorten to num unless we change the defined argument name
    return "buzz" if is_divisible_by(number, 5)
    number
  end

  def is_divisible_by(number, divisor) # The method has been named with a 1 instead of l. It is quicker to rename the method rather than all the calls to it
p    number % divisor == 0 # Here there should be a use of modulus % instead of /
  end
end


fizzbuzz = FizzBuzz.new
(1..100).each do |number|
  puts fizzbuzz.play(number)
end
