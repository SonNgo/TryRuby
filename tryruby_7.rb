class Mammal
	def breathe
		puts "inhale and exhale"
	end
end

class Cat < Mammal
	def speak
		puts "Meow"
	end
end

rani = Cat.new
rani.breathe
rani.speak

class Dog 
	def initialize(breed)
		@breed = breed
	end

	def to_s
		"#{@breed}, #{@name}"
	end
end

class Lab < Dog
	def initialize(breed, name)
		super(breed)
		@name = name
	end
end

puts Lab.new('Labr', "Benzy").to_s

	# Overriding

class Bicycle  
  attr_reader :gears, :wheels, :seats  
  def initialize(gears = 1)  
    @wheels = 2  
    @seats = 1  
    @gears = gears  
  end  
end  
  
class Tandem < Bicycle  
  def initialize(gears)  
    super  
    @seats = 2  
  end  
end  
t = Tandem.new(2)  
puts t.gears  
puts t.wheels  
puts t.seats  
b = Bicycle.new  
puts b.gears  
puts b.wheels  
puts b.seats  

	
	#Overloading

class Rectangle  
  def initialize(*args)  
    if args.size < 2  || args.size > 3  
      # modify this to raise exception, later  
      puts 'This method takes either 2 or 3 arguments'  
    else  
      if args.size == 2  
        puts 'Two arguments'  
      else  
        puts 'Three arguments'  
      end  
    end  
  end  
end  
Rectangle.new([10, 23], 4, 10)  
Rectangle.new([10, 23], [14, 13])  