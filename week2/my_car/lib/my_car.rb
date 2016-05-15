# require_relative('my_engine')


class Car
	def initialize(noise, engine)
		@engine = engine
		@noise = noise
	end

	def start
		puts "The car goes: #{@noise}"
		puts "The engine goes:#{@engine.move_pistons}"
	end
end
