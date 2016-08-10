class IngriedientsController < ApplicationController

def index

		ingriedients = Ingriedient.all
		render json: ingriedients
	end


end
