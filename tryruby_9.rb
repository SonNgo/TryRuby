def raise_and_rescue
	begin
		puts 'I am before the raise'
		raise 'An error has occured'
		puts 'I am after the raise'
	rescue 
		puts 'I am rescued'
	end
	puts 'I am after begin block'
end

#Observe that the code interrupted by the exception never gets run. 
#Once the exception is handled, execution continues immediately after the begin block that spawned it.


raise_and_rescue

begin 
	File.open('test1.rb', 'r') do |f|
		while line = f.gets
			puts line
		end
	end

	File.open('test2.rb', 'w') do |f|
		f.puts 'Hello. My name is Ngo Tung Son. Nice to meet you guys'
	end
rescue Exception => msg
	puts msg
end

	#Logger

require 'logger'  

$LOG = Logger.new('log_file.log', 'monthly')  
$LOG.level = Logger::ERROR  

def divide(numerator, denominator)  
  $LOG.debug("Numerator: #{numerator}, denominator #{denominator}")  
  begin  
    result = numerator / denominator  
  rescue Exception => e  
    $LOG.error "Error in division!: #{e}"  
    result = nil  
  end  
  return result  
end  
divide(10, 2)  
divide(10, 0)  

t = Time.now  
# to get day, month and year with century  
# also hour, minute and second  
puts t.strftime("%d/%m/%Y %H:%M:%S")  
  
# You can use the upper case A and B to get the full  
# name of the weekday and month, respectively  
puts t.strftime("%A")  
puts t.strftime("%B")  
  
# You can use the lower case a and b to get the abbreviated  
# name of the weekday and month, respectively  
puts t.strftime("%a")  
puts t.strftime("%b")  
  
# 24 hour clock and Time zone name  
puts t.strftime("at %H:%M %Z")  