# project1 = "Project ABC"
# funding1 = 1000

# puts "#{project1} has $#{funding1} in funding."

# project2 = "Project LMN"
# funding2 = 200000

# puts "#{project2} has $#{funding2} in funding."

# project3 = "Project XYZ"
# funding3 = 908923280

# puts "#{project3} has $#{funding3} in funding."

# puts "\nProjects:\n\t#{project1}\n\t#{project2}\n\t#{project3}"


class Project

	attr_reader :funding, :goal
	attr_accessor :name

	def initialize(name, funding, goal)
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


project1 = Project.new("LMN",500,3000)
project2 = Project.new("XYZ",25,75)



projects = [project1, project2]

puts projects.size
puts projects

projects.each do |p|
	puts p.goal
	
end

projects.each do |p|
	p.add_funds(100)
	p.remove_funds(20)
	puts p
	
end

projects.pop
puts projects 

project3 = Project.new("WOW",200,20000)

projects.push(project3)

puts projects

	
