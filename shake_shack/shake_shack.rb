class Shakeshop
	def initialize
		@shakes = []
	end

	def add_shake(milkshake)
		@shakes.push(milkshake)

end

def checkout
	total = 0
	@shakes.each do |single_shake|
		total += single_shake.total_price

	end

	puts "Your price for today was: #{total}, have a nice day"
end
end
#started below

class Milkshake
	def initialize()
		@base_price = 3
		@ingredient = []
	end


	def add_ingredient(my_ingredient)
		@ingredient.push(my_ingredient)
	end

	def total_price
		sum = @base_price

		@ingredient.each do |single_ingredient|
			sum += single_ingredient.price
		end
		sum
	end
end


class Ingredient
	attr_accessor :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  
end


#menu
banana = Ingredient.new("banana",2)
nuts = Ingredient.new("Nuts",5)
berries = Ingredient.new("Berries",3)
chocolate_chips = Ingredient.new("Chocolate Chips",1)
caramel = Ingredient.new("caramel",1)
#menu



my_shake = Milkshake.new()
my_shake.add_ingredient(banana)
my_shake.add_ingredient(caramel)
#faraz
farazs_shake = Milkshake.new
farazs_shake.add_ingredient(berries)
farazs_shake.add_ingredient(nuts)
#josh
joshs_shop = Shakeshop.new
joshs_shop.add_shake(my_shake)
joshs_shop.add_shake(farazs_shake)
joshs_shop.checkout
