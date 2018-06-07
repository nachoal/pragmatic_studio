require_relative 'game'
require_relative 'die'

describe Game do
	before do
		@game = Game.new("Knuckleheads")

		@initial_health = 100 
		@player = Player.new("moe",@initial_health)

		@game.add_player(@player)	 
	end

	it "w00ts the player when a high number is rolled" do
		Die.any_instance.stub(:roll).and_return(5)

		@game.play 

		@player.health.should == @initial_health + 15
	end

	it "Passes the player when a medium number is rolled" do
		Die.any_instance.stub(:roll).and_return(4)

		@game.play

		@player.health.should == @initial_health 

	end

	it "Blams the player when a low number is rolled" do
		Die.any_instance.stub(:roll).and_return(2)

		@game.play
		@player.health.should == @initial_health - 10
	end
end