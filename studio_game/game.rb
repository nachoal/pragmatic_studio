require_relative 'player'

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
			player.blam
			player.w00t
			player.w00t
			puts player

			
		end
	end
end