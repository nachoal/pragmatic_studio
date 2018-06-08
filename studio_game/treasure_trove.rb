Treasure = Struct.new(:name, :point)

module TreasureTrove
	TREASURES = [
		Treasure.new("pie", 5),
		Treasure.new("bottle", 25),
		Treasure.new("hammer", 50),
		Treasure.new("skillet", 100),
		Treasure.new("broomstick", 200),
		Treasure.new("crowbar", 400),
	]

	def self.random
		TREASURES.sample 
	end
end


if __FILE__ == $0
	puts "There are #{TreasureTrove::TREASURES.size} treasures to be found:"  
	TreasureTrove::TREASURES.each do |treasure|
	 	puts "A #{treasure.name} is worth #{treasure.point} points"
	end
end
 


# treasure = TreasureTrove.random

# puts "A #{treasure.name} is worth #{treasure.point} points"


