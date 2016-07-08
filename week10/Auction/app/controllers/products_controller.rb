class ProductsController < ApplicationController

	def index
		@user = User.find(params[:user_id])
		@products = @user.products.all
	end

	def show
		@user = User.find(params[:user_id])
		@product = @user.products.find(params[:id])

	end

	def create
	end

	def destroy
	end

end
