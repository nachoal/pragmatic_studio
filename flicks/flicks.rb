require_relative 'movie'
require_relative 'playlist'
require_relative 'waldorf_and_staler'

movie1 = Movie.new("goonies",10)
movie2 = Movie.new("ghostbusters",9)
movie3 = Movie.new("goldfinger")


playlist1 = Playlist.new("Kermit")

playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play(3)
playlist1.print_stats

playlist2 = Playlist.new("Foozie")
playlist2.add_movie(movie3)

movie4 = Movie.new("gremlins", 15)
playlist2.add_movie(movie4)
playlist2.play(2)

