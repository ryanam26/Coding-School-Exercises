class Shopping_cart
  def initialize
    @item = []
  end

  def add_to_cart(item)
    @item.push(item)
  end

  def checkout
    total = 0
    
    @item.each do | single_item |
      total += single_item.price
    end

    total

  end
end

class Item
  def initialize(name, price)#parameters
    @name = name
    @price = price#instance variables to use later
  end


  def price
  @price
  end
end


class Houseware < Item
  def price
    if @price > 100
      @price * 0.95
    else
      @price
  end
end
end

class Fruit < Item
  def price
    today = Time.now
    if today.saturday? || today.sunday?
      @price * 0.90
    else @price
    end
  end
end



banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange juice",10)
rice = Item.new("Rice",1)
vaccuum = Houseware.new("Vaccuum", 150)
anchovies = Item.new("Anchovies",1)



my_cart = Shopping_cart.new #calling the item
my_cart.add_to_cart(banana)
my_cart.add_to_cart(banana)
my_cart.add_to_cart(vaccuum)
my_cart.add_to_cart(rice)

puts "Your total to is #{my_cart.checkout}"