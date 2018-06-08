Pledge =  Struct.new(:name, :amount)


module PossiblePledges
	PLEDGES = [
		Pledge.new("bronze", 50),
		Pledge.new("silver", 75),
		Pledge.new("gold", 100),

	]

	def self.random
		PLEDGES.sample
	end

end


if __FILE__ == $0

	puts "There are #{PossiblePledges::PLEDGES.size} possible pledge amounts:"
	PossiblePledges::PLEDGES.each do |pledge|
		puts "A #{pledge.name} is worth $#{pledge.amount}."
		
	end

end