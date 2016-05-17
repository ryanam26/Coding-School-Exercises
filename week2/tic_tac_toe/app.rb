require_relative('lib/board')

my_board = Board.new
# my_board.show_board
# my_board.add_character([2,2], "X")
# puts "Hey I added a character"
# my_board.show_board

my_board.add_character([2,2], "O")
puts "Hey I added a character, O"
my_board.show_board

puts ""

puts "It's you turn"

your_turn = gets.chomp



my_board.add_character([2,1], "X")
puts "Hey I added a character"
my_board.show_board

puts "Your Turn" 

my_board.add_character([2,0], "O")
puts "Hey I added a character"
my_board.show_board

my_board.add_character([1,0], "X")
puts "Hey I added a character"
my_board.show_board

my_board.add_character([1,1], "O")
puts "Hey I added a character"
my_board.show_board

my_board.add_character([1,2], "X")
puts "Hey I added a character"
my_board.show_board

my_board.add_character([0,0], "O")
puts "Hey I added a character"
my_board.show_board

my_board.add_character([0,1], "X")
puts "Hey I added a character"
my_board.show_board

my_board.add_character([0,2], "O")
puts "Hey I added a character"
my_board.show_board





