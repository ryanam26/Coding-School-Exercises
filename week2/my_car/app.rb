require_relative('lib/my_engine')
require_relative('lib/my_car')

v8 = Engine.new('DUUURRR',400)
v6 = Engine.new('dur',200)
electric_engine = Engine.new('wooosh',350)


tesla = Car.new('Burr',electric_engine)
tesla.start

other_tesla = Car.new('Burr',v8)

other_tesla.start