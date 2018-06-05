#class names always begin with upercase
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
	#setter method
	#def title=(new_title)
	#	@title = new_title
	#end

	#setter method shortcut 
	#attr_writer :title 

	#this attribute is both attr_writer and attr_reader
	#attr_accessor :title
	
	#getter method with symbol collon
	#attr_reader  :rank 

	#es lo mismo que el de arriba
	#def title
		#@title
	#end

	def to_s
		"#{@title} has a rank of #{@rank}"
	end
end

class Playlist
	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end

	def play
		puts "#{@name}'s playlists:"
		puts @movies

		@movies.each do |movie|
			movie.thumbs_up
			puts movie
			
		end

	end

end

movie1 = Movie.new("goonies",10)
movie2 = Movie.new("ghostbusters",9)
movie3 = Movie.new("goldfinger")


playlist1 = Playlist.new("Kermit")

playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play

playlist2 = Playlist.new("Foozie")
playlist2.add_movie(movie3)

movie4 = Movie.new("gremlins", 15)
playlist2.add_movie(movie4)
playlist2.play

