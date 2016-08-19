class UsersController < ApplicationController

	before_action :authenticate_user!, only: [:show]

def show
	@user = User.find_by(params[:id])

end

end
