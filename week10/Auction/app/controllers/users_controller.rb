class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(
			name: params[:user][:name]
			)
		@user.save

		redirect_to user_products_path(@user)
	end


end
