# puts "Mikey loves Goonies"
# puts "Mikey's favorite movie is Goonies"

# movie = "Goonies"               #any ruby var can live inside #{}
# puts "Mikey's favorite movie is #{movie}"

#  rank = 10
#       #interpolation interpolate the value of movie and put in in a string
#       #when using #{} any expression will convert into string
# puts "#{movie} has a rank of #{rank * 2}"

#Method definition, a method is like a black box 


						#default value in rank

def weekday
	current_time = Time.new
	today = current_time.strftime("%A")
end 

def movie_listing(title, rank=0)

	#The last expression in the method is the one who returns+
	"#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}."


end



puts movie_listing("goonies",10)
puts movie_listing("ghostbusters",9)
puts movie_listing("goldfinger")

movie1 = Movie.new("goonies",10)
movie1.thumbs_up
puts movie1
puts movie1.title
movie1.title = "Gooneys!"
puts movie1.title
puts movie1.normalized_rank

puts movie1.rank


movie2 = Movie.new("ghostbusters",9)
movie2.thumbs_down
puts movie2

movie3 = Movie.new("goldfinger")
puts movie3