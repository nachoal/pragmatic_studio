require_relative 'project'

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
	end
end