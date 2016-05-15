class WheelCounter
	def initialize(vehicles)
		@vehicles = vehicles
	end

	def count_wheels
		# @vehicles.reduce(0) do |sum , vehicle|
		# 	sum + vehicle.wheels
		total = 0
		@vehicles.each do |vehicle|
			total += vehicle.wheels
		end
		total
	end
end

	
