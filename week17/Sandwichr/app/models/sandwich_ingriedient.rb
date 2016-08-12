class SandwichIngriedient < ApplicationRecord
	belongs_to :ingriedient
	belongs_to :sandwich
end
