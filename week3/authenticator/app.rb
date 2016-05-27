

# app.rb
require_relative("lib/authenticator.rb")
require_relative("lib/word_counter")
require_relative("lib/counter_picker")

auth = Authenticator.new("Josh", "swordfish")

puts "Enter your username!"
user_name = gets.chomp

puts "Enter your password!"
user_password = gets.chomp

if auth.user_info?(user_name, user_password)
	puts "Welcome back, #{user_name}"
	puts "Enter a sentence"
 	sentence_input = gets.chomp
 	my_counter = WordCounter.new(sentence_input)

 	puts "Enter an operation: \ncount words |\n count letters |\n reverse |\n upcase |\n downcase"
 	operation = gets.chomp
 	counter_picker = CounterPicker.new(operation, my_counter)
 	counter_picker.perform_operation
else
	puts "Go away, #{user_name}. No word counter for you"
end

#  	# Do word counter things
# else
#  	# Do something to tell the User their credentials aren't valid
# end























