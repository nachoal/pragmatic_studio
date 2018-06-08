class Movie
	attr_reader  :rank
	attr_accessor :title

	def initialize(title,rank=0)
		#transfer to instance variable with @ <- instance
		#they don't need to match the initialize var name
		#by default an object state is PRIVATE we dont get access to the instance variables by default
		@title = title.capitalize
		@rank = rank
		#@normalized_rank = @rank /100
	end

	def normalized_rank
		@rank / 10
	end

	def thumbs_up
		@rank += 1 
	end

	def thumbs_down
		@rank -= 1
	end

	def <=>(other_movie)
		other_movie.rank <=> @rank 

	end

	def to_s
		"#{@title} has a rank of #{@rank} (#{status})"
	end
	#a code style convention indicating that a method returns boolean val
	def hit?	
		@rank >= 10 
	end

	def status
		# if hit? 
		# 	"Hit"
		# else
		# 	"Flop"
		# end this is the same as:  
		hit? ? "Hit" : "Flop"
	end
end 

