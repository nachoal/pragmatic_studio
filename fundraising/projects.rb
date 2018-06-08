require_relative 'project'
require_relative 'funding_round'
require_relative 'possible_pledges'

class Projects
	def initialize(name)
		@name = name
		@projects = []
	end

	def add_project(project)
			
		@projects << project 

	end

	def project_info
		funded, underfunded = @projects.partition {|project| project.funded?}

		puts "\n#{funded.size} projects fully funded:"
		funded.each do |project|
			puts "#{project.name}"
		end

		puts "\n#{underfunded.size} projects underfunded:"
		underfunded.each do |project|
			puts "#{project.name}"
		end

		puts "\nStill need contibrution:"
		underfunded.sort.each do |project|
			puts "#{project.name} needs: #{project.total_needed}"
		end  
	end


	def request_funding(rounds=1)

		puts "There are #{PossiblePledges::PLEDGES.size} possible pledge amounts:"
			PossiblePledges::PLEDGES.each do |pledge|
				puts "A #{pledge.name} is worth $#{pledge.amount}."
			end

		puts "#{@name}:"
		@projects.each do |p|
			puts p 
			
		end
		1.upto(rounds) do 
			@projects.each do |p|
				FundingRound.funding_round(p)
				puts p
			end	
		end


	end

end