require_relative 'project'
require_relative 'funding_round'
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
			FundingRound.funding_round(p)
			puts p
			
		end
	end

end