
	#Array and Range
x=[1, 2, 3, 4, 10, 8, 5]
x << "Word"
puts x
puts x.pop
puts x.join('-')
puts "This is a test".scan(/\w+/).join('_') #This_is_a_test

s = "This.is.a.test"
a = s.split(/\./).inspect
puts a

x.each { |e| puts e.to_s+"X"  }

puts x.include?(3)
puts x.empty?
puts x.first
puts x.first(2)
puts x.sort

a = (0..9).to_a
puts a.inspect
a = ('a'..'e').to_a
puts a.inspect
puts a[0..-1].inspect

	#Hash and Symbol

dictionary = {'cat' => 'feline animal', 'dog' => 'canine'}
puts dictionary['cat']
puts dictionary.keys
dictionary.delete("cat")
puts dictionary
x = {'a' => 100, 'b' => 50, 'c' => 30}
x.delete_if { |key, value| value < 50  }
puts x

user = {:name => "Michael Hartl", :email => "michael@gmail.com"} # prefer because of saving memory (doesn't create new Object String, just reference)
puts user[:name] #  user['name'] doesn't run

params = {user: {name: "Michael Hartl", email: "michael@gmail.com"}}
puts params[:user][:name]

user.each{ |key, value| puts "#{key} : #{value}"}