require 'sinatra'
require 'sinatra/reloader' if development?
require 'imdb'
require_relative "lib/movies"

get "/" do
	erb(:search_page)
end

post "/results" do
	@userInput = params[:search]
	@movies = Movies.new(@userInput)
	@movieSearch = @movies.search
	@randomMovie = @movieSearch.sample

	if @movieSearch.length <= 2
		erb :fail
	else
		erb(:result_page)
	end
end