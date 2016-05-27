class WordCounter
	def initialize(sentence)
		@sentence = sentence
	end

	def count_words
		words = @sentence.split
		words.length
	end

	def count_letters
		letters = @sentence
		letters.length
	end

	def reverse_the_text
		reverse_sentence = @sentence
		reverse_sentence.reverse
	end

	def text_uppercase
		upper_case = @sentence
		upper_case.upcase
	end

	def text_lowercase
		lower_case = @sentence
		lower_case.downcase
	end


end





