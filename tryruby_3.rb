	#Lamda and Block

#Lamda is just a object like everything else in Ruby
l = lambda { "Do or do not" }
puts l.call

l = lambda do |string| 
  if string == "try"
    return "There's no such thing" 
  else
    return "Do or do not."
  end
end
puts l.call("try") 

#Block is  a piece of code that can't be stored in variable and isn't object
def demonstrate_block(number)
  yield(number)
end

puts demonstrate_block(1) { |number| number + 1 }


empty_block = lambda { }
puts empty_block.object_id
puts empty_block.class # Proc class(where block come out) is subclass of Object
puts empty_block.class.superclass

# A method is simply a block bound to an object, with access to the object's state
class Calculator
  def add(a, b)
    return a + b
  end
end

addition_method = Calculator.new.method("add")
addition =  addition_method.to_proc

puts addition.call(5, 6)

#yield (just a keyword, not a method,use to pass one block to a method)
def calculation(a, b, operation)
  operation.call(a, b)
end

puts calculation(5, 6, lambda { |a, b| a + b }) # addition
puts calculation(5, 6, lambda { |a, b| a - b }) # subtraction

def foo
 yield
end
foo { puts "sometimes shortcuts do get you there faster"  }

