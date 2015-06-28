    #Duck Typing(In Ruby, we rely less on the type(or class) of object)
    #and more on its capabilities.

class Duck 
	def quack
		'Quack!'
	end 

	def swim 
		'Paddle paddle paddle ...'
	end
end

class Goose
	def honk
		'Honk!'
	end

	def swim
		'Splash splash'
	end
end

class DuckRecording
	def quack
		play
	end

	def play
		'Quack'
	end
end

def make_it_quack(duck) #Duck Typing
	duck.quack
end
puts make_it_quack(Duck.new)					
puts make_it_quack(DuckRecording.new) 


		#Syntactic Sugar 
class NewDog
	def initialize(breed)
		@breed = breed 
	end
	attr_reader :breed, :name

	def name=(nm) 
		@name = nm
	end
end

nd = NewDog.new('Doberman')
#nd.name=('Benzy')
nd.name = 'Benzy' # This is method call. In Ruby there is no way for us to 
									# interact with instance variable without throughing instance method
puts nd.name


		#Mutable and Immutable object

str = "A simple string."
str.freeze # In Ruby, Mutability is a property of an instance, not of an entire class. 
           # Any instance can become immutable by calling freeze
begin 
	str << "An attempt to modify"
rescue => err
	puts "#{err.class} #{err}"
end


str = "Original string"
str.freeze # freeze operates on an object reference, not on a variable
str += "attachemnt"
puts str

a = b = 'Original String'  
b.freeze  
puts a.frozen? # true  
puts b.frozen? # true  
a = 'New String'  
puts a  
puts b  
puts a.frozen? # false  
puts b.frozen? # true  