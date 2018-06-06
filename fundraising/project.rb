class Project

	attr_reader :funding, :goal
	attr_accessor :name

	def initialize(name, funding=0, goal=0)
		@name = name
		@funding = funding
		@goal = goal 
	end

	def add_funds(new_funds)
		@funding += new_funds
		puts "#{@name} got some funds!"
	end

	def remove_funds(substracted_amount)
		@funding -= substracted_amount
		puts "#{@name} lost some funds!"
	end

	def to_s
		"Project #{@name} has $#{@funding} in funding towards a goal of $#{@goal}"
	end

	def total_needed
		@goal - @funding  
	end
end

if __FILE__ == $0 
	proyectito =  Project.new("proy", 100, 1000)
	puts proyectito.total_needed	
end