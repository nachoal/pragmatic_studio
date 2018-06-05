require_relative 'project'

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