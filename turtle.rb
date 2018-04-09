require_relative 'reptile'

class Turtle < Reptile
	attr_accessor :name, :age

	def initialize(species, num_limbs, name, age)
		super(species, num_limbs)
		@name = name
		@age = age
	end

	def age!
		@age += 1 
		puts "#{@name} is #{@age} years old"
	end

	def swim
		puts "I love the water"
	end

	def self.fun_fact
		fun_facts = ["Turtles also have a lower shell called a ‘plastron’.", 
			"Turtles have existed for around 215 million years",
			"The largest turtle is the leatherback sea turtle, it can weigh over 900 kg! (2000 lb)",
			"Many turtle species are endangered.",
			"Sea turtles have special glands which help remove salt from the water they drink."]
		puts fun_facts[rand(0..4)]
	end
end

turt = Turtle.new('Cheloniidae', 4, 'Frank', 3)
puts turt
puts turt.species
puts turt.name
puts turt.age
# puts turt.num_limbs
puts turt.swim
# puts turt.cold_blooded
puts Turtle.fun_fact
puts turt.age!
puts turt.check_limbs