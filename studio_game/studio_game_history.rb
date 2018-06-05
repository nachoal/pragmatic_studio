# # # greeting = "Welcome!"

# # # # 3.times  do
# # # # 	puts greeting
	
# # # # end
# # # puts greeting
# # # puts Time.now

# # # name1 = "larry"
# # # health1 = 60

# # # name2 = "curly"
# # # name3 = "moe"

# # # puts "#{name1}'s health is #{health1/9}"

# # # puts "Players:\n\t#{name1}\n\t#{name2}\n\t#{name3}"


# # # In the following line of code: text = "#{name.capitalize} has a health of #{health}."
# # # capitalize is a method 
# # # called on the object named name 
# # # and assigned to the variable named text.

# # name1 = "larry"
# # health1 = 60

# # name2 = "curly"
# # health2 = 125

# # lineBreak = "-"

# # puts "#{name1.capitalize} has a health of #{health1}"
# # puts "#{name2.upcase} has a health of #{health2}"
# # puts "#{lineBreak.ljust(30,"-")}"

# # #Assigned Larrys Health to Curly
# # health2 = health1

# # puts "#{name2.upcase} has a health of #{health2}"
# # puts "#{lineBreak.ljust(30,"-")}"

# # #Modified Larrys health again
# # health1 = 30

# # puts "#{name1.capitalize} has a health of #{health1}"
# # puts "#{name2.upcase} has a health of #{health2}"
# # puts "#{lineBreak.ljust(30,"-")}"


# # name3 = "moe"
# # health3 = 100

# # name3_print = "#{name3.capitalize} has a health of #{health3}."

# # #Two ways of doing the same thing, the second one is cleaner
# # puts name3_print.center(50,"*")
# # puts "#{name3.capitalize} has a health of #{health3}.".center(50,"*")
# # puts "#{lineBreak.ljust(30,"-")}"


# # #Fourth Player creation 
# # name4 = "shemp"
# # health4 = 90

# # puts "#{name4.capitalize.ljust(20,".")}#{health4} health"
# # current_time = Time.now 
# # formatted_time = current_time.strftime("%A %m/%d/%Y at %I:%M%p")
# # puts "The game started on #{Time.now.strftime("%A")} #{Time.now.strftime("%m/%d/%Y")} at #{Time.now.strftime("%I:%M%p")}"
# # puts "The game started on #{formatted_time}"



# def time
# 	current_time = Time.new
# 	formatted_time = current_time.strftime("%H:%M:%S")
# end


# def say_hello(name, health="100")
# 	"I'm #{name.capitalize} with a health of #{health} as of #{time}."
# end

# puts say_hello("larry",60)
# puts say_hello("curly",125)
# puts say_hello("moe")
# puts say_hello("shemp",90)



class Player
	attr_reader :health 
	attr_accessor :name 

	def initialize(name,health=100)
		@name = name.capitalize
		@health = health
	end

	def blam
		@health -= 10
		puts "#{@name} got blammed!"
	end

	def w00t
		@health += 15
		puts "#{@name} got w00ted!"
	end

	def to_s
		"I'm #{@name} with a health of #{@health} and a score of #{score}."
	end

	def score
		@health + @name.length 
	end

	def name=(new_name)
		@name = new_name.capitalize
	end

end



player2 = Player.new("larry", 60)
puts player2.name

player2.name = "lawrence" # is the same as doing player2.name=("new_name")
puts player2.name
puts player2.health
puts player2.score
puts player2



player1 = Player.new("moe")
# puts player1

# player2 = Player.new("larry",60)
# puts player2

 player3 = Player.new("curly", 125)
# puts player3

 #player3.blam
# puts player3

# player3.w00t
# puts player3


puts player1.health
puts player2.health
puts player3.health



# players = [player1, player2, player3]

# puts "There are #{players.size} players in the game:"

# players.each do |p|
# 	puts p 
	
# end

# players.each do |p|
# 	puts p.health
# end

# players.each do |p|
# 	p.w00t
# 	p.w00t
# 	p.blam
# 	puts p
# end


# players.pop
# player4 = Player.new("shemp",90)

# players.push(player4)

# puts players