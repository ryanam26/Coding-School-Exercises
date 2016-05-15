require_relative('lib/hoverboard')
require_relative('lib/mazda')
require_relative('lib/my_cycle')
require_relative('lib/ninja')
require_relative('lib/truck')
require_relative('lib/wheel_counter')

ninja = Motorcycle.new
mazda = Sedan.new
hoverboard = Hoverboard.new
my_cycle = Unicycle.new
truck = Truck.new

array_of_vehicles = [ninja,mazda,hoverboard,my_cycle,truck]

wheel_counter = WheelCounter.new(array_of_vehicles)
puts wheel_counter.count_wheels

