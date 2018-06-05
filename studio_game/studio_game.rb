require_relative 'player'
require_relative 'game'


player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)





chip1 = Player.new("alvin")
chip2 = Player.new("simon")
chip3 = Player.new("Theodore")



chipmunks = Game.new("Chipmunks")

chipmunks.add_player(chip1)
chipmunks.add_player(chip2)
chipmunks.add_player(chip3)

chipmunks.play




