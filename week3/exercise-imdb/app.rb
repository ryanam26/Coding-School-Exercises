require("imdb")

require_relative("lib/movies-chart")

trek_search = Imdb::Search.new("Star Trek")
diehard_search = Imdb::Search.new("Die Hard")
men_in_black_search = Imdb::Search.new("Men in Black")
avengers_search = Imdb::Search.new("Avengers")
money_ball_search = Imdb::Search.new("Money Ball")
caddy_shack_search = Imdb::Search.new("Caddyshack")
wall_street_search = Imdb::Search.new("Wall Street")

movies = []

movies.push(trek_search.movies[0])
movies.push(diehard_search.movies[0])
movies.push(men_in_black_search.movies[0])
movies.push(avengers_search.movies[0])
movies.push(money_ball_search.movies[0])
movies.push(caddy_shack_search.movies[0])
movies.push(wall_street_search.movies[0])

my_chart = MoviesChart.new(movies)
my_chart.print_chart

# movies = trek_search.movies
# movies.each do | movie |
# 	puts "#{movie.title}: #{movie.rating}"
# end