require_relative 'movie'

describe Movie do
	it "has a capitalized title" do
		movie = Movie.new("goonies", 10)

		movie.title.should  == "Goonies"
	end
	
end