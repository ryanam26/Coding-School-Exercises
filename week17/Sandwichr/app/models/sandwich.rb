class Sandwich < ApplicationRecord

	has_many :sandwich_ingriedients
	has_many :ingriedients, through: :sandwich_ingriedients
end
