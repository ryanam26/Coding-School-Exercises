class Movies
	
	def initialize (keyword)
		@keyword = keyword
	end

	def search
		searching = Imdb::Search.new(@keyword)
		movieList = searching.movies[0..19]
		ninemovies = movieList.select { | display | display.poster != nil } 
		ninemovies = ninemovies [0..8]
	end
end

# 	def year
# 		whatyear = Imdb::Search.new
# end
