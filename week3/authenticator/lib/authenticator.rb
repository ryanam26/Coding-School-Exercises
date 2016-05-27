class Authenticator
	#stuff from the data base
	def initialize (name, password)
		@name = "Josh"
		@password = "swordfish"
	end

	def user_info?(name, password)
		if name == @name && password == @password
			true
		else
			false
		end
		
	end
end
