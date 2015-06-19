#Everything is Object
#Every object like 1, 0, "", etc except false and nil is truthiness

	#Comparison
age = 10
puts "You're too young to use this system" if age < 18

age = 24 
puts "You're a teenager" unless age > 12 && age < 20
 
age = 81; gender = "male"
puts "A very young or old man" if gender == "male" && (age < 18 || age > 80)

	#Foating Point Number
puts 10/3
puts 10.0/3.0
x = 10; y =3
puts x.to_f / y.to_f

	#Constants (beginning with a capital letter)
Pi = 3.14
Pi = 500


	#String
puts 'this is a simple Ruby string literal'
puts 'Won\'''''t you r\nead O\'Reil''''''ly\'s book'''''''
puts "Won\'t you ''''''''rea\nd O\'Reilly\'s book"

x = 10
y = 20
puts "#{x} + #{y} = #{x + y}" #Interpolation

puts 'This is a qoute'.length

puts "foobar".sub('bar','foo')
puts "this is a test".gsub('i', '')

	#Regular Expression (^,	$, ., w, W, d, D, s, S)
x = "This is a test"
puts x.sub(/^../, 'Hello')
puts x.sub(/..$/, 'Hello')
x.scan(/./) {|letter| print letter + " "}
puts
x.scan(/../) {|letter| print letter + " "}
puts

d = "the car costs $1000 and the cat costs $10"
d.scan(/\d+/) {|digit| puts digit}
d.scan(/\d/) {|digit| puts digit}

d.scan(/[abcdioe]/) {|letter| print letter + " " }
puts

puts "No digit" unless "This is a test" =~ /[0-9]/

x = "This is a test".match(/(\w+) (\w+)/)
puts x[0]
puts x[1]
puts x[2]

	#Flow Control 
fruit = "orange"
if fruit == "orange"
	color = "orange"
elsif fruit == "apple"
	color = "red"
elsif fruit == "banana"
	color = "yellow"
else 
	color = "unknow"
puts color
end

5.times do 
	puts "Hello"
end
	
x = 1
while x < 10 
	puts x
	x = x*2 
end

i = 1
i = i*2 until i >1000
puts i

age = 10
type = age < 18 ? "child" : "adult"
puts "you are kind of " + type
