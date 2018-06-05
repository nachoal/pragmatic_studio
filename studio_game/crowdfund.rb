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

class Projects
	def initialize(name)
		@name = name
		@projects = []
	end

	def add_project(project)
			
		@projects << project 

	end

	def request_funding

		puts "#{@name}:"
		@projects.each do |p|
			puts p 
			
		end

		@projects.each do |p|
			p.add_funds(2500)
			puts p
			
		end
	end

end



project1 = Project.new("LMN",500,3000)
project2 = Project.new("XYZ",25,75)
project3 = Project.new("WOW", 10000, 100000)

project_list = Projects.new("VC-Friendly Start-up Projects")

project_list.add_project(project1)
project_list.add_project(project2)
project_list.add_project(project3)

project_list.request_funding

	
