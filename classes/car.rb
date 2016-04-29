#what does a car do

#honk, starts
#play radio

#What defines my car. These are the attributes
#color
#make
#year
#engine


class Car
	
	attr_accessor :color

	def initialize(my_color,my_sound)
		@color = my_color
		@sound = my_sound

	end
	def color
		puts @color
	end
		
	#instance Method
	def make_noise
		puts "My #{@color} car goes #{@sound}"
	end

	def play_radio
		puts "Waka Flaka is going hard"
		
end
end

class RaceCar < Car
	def make_noise
		puts "My #{@color} car goes #{@sound.upcase}"
	end
end



my_car = Car.new("Red","zoom")
honda = Car.new("Yellow","swoosh")
tesla = Car.new("Orange","Bbrrrrrrm")
mazda = Car.new("Black","boooof")
volvo = Car.new("Silver","triiiiing")
ferrari = RaceCar.new("Red","Vroom vroom")

ferrari.make_noise
tesla.play_radio
honda.make_noise


# tesla.honk
# tesla.play_radio
# tesla.color

# volvo.color = "green"
# puts volvo.color