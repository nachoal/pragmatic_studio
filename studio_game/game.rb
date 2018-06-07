require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

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

	def play
		puts "There are #{@players.size} players in #{@name}:"
		@players.each do |player|
			puts player 
			
		end



		@players.each do |player|
			GameTurn.take_turn(player)
			puts player 
		end
	end
end
