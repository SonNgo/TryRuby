		#Object Serialization

class GameCharacter
	def initialize(power, type, weapons)
		@power = power
		@type = type
		@weapons = weapons
	end
	attr_reader :power, :type, :weapons
end

gc = GameCharacter.new(120, "Magical", ["spells", "invisibility"])
File.open('game', 'w+') do |f|
	Marshal.dump(gc, f)
end


File.open('game') do |f|
	@load = Marshal.load(f)
end

puts "#{@load.power} #{@load.type}"
@load.weapons.each do |w|
	puts w
end


		#Module

module D 
	def initialize(name)
		@name = name
	end
	def to_s
		@name
	end
end

module Debug
	include D
	def who_am_i?
		"#{self.class.name}"
	end
end

class Phonograph
	include Debug
end

class EightTrack
	include Debug
end

ph = Phonograph.new("West End Blue")
et = EightTrack.new("Real Pillow")
puts ph.who_am_i?
puts et.who_am_i?


		#Self

#Self inside class and module definitions
class S
	puts 'Just started class S'
	puts self # S
	module M
		puts 'Nested module S::M'
		puts self #S::M
	end
	puts 'Back in the outer level of S'
	puts self #S
end
#Self in instance method definitions
class S
	def m 
		puts 'Class S method m:'
		puts self #S:memory
	end
end
s = S.new
s.m
#Self in class-method definitions
class S
	def S.x 
		puts "Class method of class S"
		puts self #S
	end
end
S.x