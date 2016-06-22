class SiteController < ApplicationController
	def home #this is called an action
		render 'home'
	end
	def contact
		render 'contact'
	end
end


