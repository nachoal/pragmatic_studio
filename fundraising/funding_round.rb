require_relative 'project'
require_relative 'possible_pledges'

module FundingRound
	def self.funding_round(p)
		random_roll = rand(1..100)
		if random_roll.even?
			p.add_funds(random_roll)
		else
			p.remove_funds(random_roll)
		end

		if p.funded?
			puts "#{p.name} is now funded!"
		else
			puts "#{p.name} still needs #{p.total_needed}"
		end

		randomPledge = PossiblePledges::random

		puts "#{p.name} received a #{randomPledge.name} pledge for #{randomPledge.amount}!"
	end
end