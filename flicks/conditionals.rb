require_relative 'movie'

movie = Movie.new("godfather",9)

if movie.rank >= 10
	puts "Hit"
end

#conditional statement 
puts "Hit" if movie.rank >=10

#violating the tell don't ask since i'm asking the movie 
if movie.rank < 10 
	puts "Flop"
end

if movie.rank >= 10 
	puts "Hit"
else
	puts "Flop"
end