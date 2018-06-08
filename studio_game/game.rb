require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game

	attr_reader :name 
	#instance variables or "state"
	def initialize(name)
		@name = name
		@players = []
	end

	#methods or "behaviour"

	def add_player(player)
		@players << player 
	end 

	def play(rounds=1)
		# puts "There are #{@players.size} players in #{@name}:"
		# @players.each do |player|
		# 	puts player 
			
		# end
		puts "There are #{TreasureTrove::TREASURES.size} treasures to be found:"  
		TreasureTrove::TREASURES.each do |treasure|
	 		puts "A #{treasure.name} is worth #{treasure.point} points"
	 	end
		

		1.upto(rounds) do |round|
			puts "\nRound #{round}:" 
			@players.each do |player|
				GameTurn.take_turn(player)
				#puts player
				
			end
			puts "\nRound #{round} is over.\n" 
		end
	end

	def print_name_and_health(player)

		puts "#{player.name} (#{player.health})"
	end

	def print_stats
		puts "\n#{@name}'s Statistics: "

		strong, wimpy = @players.partition { |player| player.strong?}

		puts "\n#{strong.size} strong players :"
			strong.each do |player|
				print_name_and_health(player)
			end

		puts "\n#{wimpy.size} wimpy players :"
			wimpy.each do |player|
				print_name_and_health(player)
			end
		puts "\n#{@name}' High Scores:"
		 

		@players.sort.each do |player|
			puts "#{player.name.ljust(20,'.')}#{player.score}"
		end
	end
end
