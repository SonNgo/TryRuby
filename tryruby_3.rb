# lambda is just a function, object like everything else
l = lambda {"Do or not do"}
puts l.call()

l = lambda do |string|
  if string == "try"
    return "nice"
  end 
end 

puts l.call("try")


#block is a code that you store in variable like other objects and run on demand
# Proc is a class of lambda and block
empty_block = lambda {}
puts empty_block. object_id
puts empty_block.class
puts empty_block.class.superclass

def demonstrate_block(number)
  yield(number)
end 

puts demonstrate_block(1) { |number| number = number + 1}

def calculation(a, b, operation)
  operation.call(a, b)
end

puts calculation(5, 6, lambda{|a, b| a+b})
puts calculation(5, 6, lambda{|a, b| a-b})


def calculation(a, b) 
  yield(a, b)
end 

puts calculation(5, 6) {|a, b| a+b}
puts calculation(5, 6) {|a, b| a-b}

def calculation(a, b, &block)
  block.call(a, b)
end

puts calculation(5, 6) {|a, b| a + b}
puts calculation(5, 6) {|a, b| a - b}