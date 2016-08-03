class PostsController < ApplicationController
	
	def new
		@posts = Post.new
	end

	def index

		render 'index'


	end



end
