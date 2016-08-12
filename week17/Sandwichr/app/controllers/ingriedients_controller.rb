# class IngriedientsController < ApplicationController

# def index

# 		ingriedients = Ingriedient.all
# 		render json: ingriedients
# 	end

# end

class IngriedientsController < ApplicationController
	def index
	  ingriedients = Ingriedient.all
	  render json: ingriedients
	end

	def create
	  ingriedient = Ingriedient.create(ingriedient_params)
	  render json: ingriedient
	end

	def show
	  ingriedient = Ingriedient.find_by(id: params[:id])
	  unless ingriedient
	    render json: {error: "ingriedient not found"},
	    status: 404
	    return
	  end
	  render json: ingriedient
	end

	def update
	  ingriedient = Ingriedient.find_by(id: params[:id])
	  unless ingriedient
	    render json: {error: "ingriedient not found"},
	    status: 404
	    return
	  end
	  ingriedient.update(ingriedient_params)
	  render json: ingriedient
	end

	def destroy
	  ingiedient = Ingriedient.find_by(id: params[:id])
	  unless ingriedient
	    render json: {error: "ingriedient not found"},
	    status: 404
	    return
	  end
	  ingriedient.destroy
	  render json: ingriedient
	end


	private

	def sandwich_params
	  params.require(:ingriedient)
	    .permit(:name, :calories)
	end
end
