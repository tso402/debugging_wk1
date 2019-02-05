=begin Initial code
def say_hello(name)
  "hello #(name)"
end
=end

# The issue with the code was that there was no method to puts
# the code to the screen and the name variable in the string had () instead
# of {} so prints #(name) instead of 'james'

def say_hello(name)
  puts "hello #{name}"
end

say_hello('james')
