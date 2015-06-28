require_relative 'loadpath_tryruby6'  
m = MotorCycle.new('Yamaha', 'red')  
m.start_engine  
  
class MotorCycle  
  def disp_attr  
    puts 'Color of MotorCycle is ' + @color  
    puts 'Make  of MotorCycle is ' + @make  
  end  
end  
m.disp_attr  
m.start_engine  
puts self.class  
puts self  


class Dummy  
  def method_missing(m, *args, &block)  
    puts "There's no method called #{m} here -- please try again."  
  end  
end  
Dummy.new.anything  
