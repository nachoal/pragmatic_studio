# class Snack
# 	attr_reader :name, :carbs


# 	def initialize(name,carbs)
# 		@name = name
# 		@carbs = carbs
# 	end
# end

#struct is just a collection of attributes and saves us from making a class like up
#                  #symbol for attributes  
Snack = Struct.new(:name,:carbs)

module SnackBar
	#constant is all caps
	SNACKS = [
		Snack.new(:popcorn, 20),
		Snack.new(:candy, 15),
		Snack.new(:nachos, 40),
		Snack.new(:pretzel, 10),
		Snack.new(:soda, 5)
	]

	def self.random 
		SNACKS.sample
	end
end

if __FILE__ == $0
		#We want SNACKS constant inside SnackBar module
	puts SnackBar::SNACKS

	snack = SnackBar.random
	puts "Enjoy your #{snack.name} (#{snack.carbs} carbs)"
end


