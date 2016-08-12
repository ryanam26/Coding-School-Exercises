class Ingriedient < ApplicationRecord
	
	has_many :sandwich_ingriedients
	has_many :sandwiches, through: :sandwich_ingriedients

end
