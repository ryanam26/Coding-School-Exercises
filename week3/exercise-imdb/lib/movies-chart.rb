class MoviesChart
	def initialize( movies )
		@movies = movies
	end
	
	def print_chart
		@movies.each do | movie |
		puts "#{movie.title}: #{movie.rating}"
	end


end


end



5.downto(1) { |n| print n, ".. " }