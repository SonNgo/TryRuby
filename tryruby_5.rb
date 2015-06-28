# Blocks are not objects  
# they can be converted into objects of class Proc by calling lambda method  
prc = lambda {puts 'Hello'}  
# method call invokes the block  
prc.call  
  
# another example  
toast = lambda do  
  'Cheers'  
end  
puts toast.call  

=begin  
  You cannot pass methods into other methods (but you can pass procs into methods),  
  and methods cannot return other methods (but they can return procs)  
=end  
  
def some_mtd some_proc  
  puts 'Start of mtd'  
  some_proc.call  
  puts 'End of mtd'  
end  
  
say = lambda do  
  puts 'Hello'  
end  
  
some_mtd say  

a_Block = lambda { |x| "Hello #{x}!" }  
puts a_Block.call 'World'  
# output is: Hello World!  