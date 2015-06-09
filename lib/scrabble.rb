module Scrabble
  # require your gems and classes here
	#require_relative 'scrabble/whatevs'
	class Scrabble
		def convert(letter_value)
			return "" if letter_value == 0
		end

		LETTER_VALUE = {"A"=>1, "E"=>1, "I"=>1, "O"=>1, "U"=>1, "L"=>1, "N"=>1, "R"=>1, "S"=>1, "T"=>1, "D"=>2, "G"=>2, "B"=>3, "C"=>3, "M"=>3, "P"=>3, "F"=>4, "H"=>4, "V"=>4, "W"=>4,  "Y"=>4,"K"=>5, "J"=>8, "X"=>8, "Q"=>10, "Z"=>10}


		def self.print_pairs(word)
			sum = 0
			word = word.upcase
			breakdown = []

      word.split(//).each do |letter|
        pair_hash = {}
        value = LETTER_VALUE[letter] # get value for letter
        pair_hash[letter] = value # push letter value pair into hash
        breakdown << pair_hash # push hash pairs into array collection
      end

      return breakdown
    end


		def self.score(word)
			sum = 0
			word = word.upcase
			word = word.split(//).each do |value|
				sum = sum+LETTER_VALUE[value]
			end
			return sum
		end



			# word = word.split(//).each do |value|
			# 	letters_hash = {}
      #   letter_sym = :""
      #   letter_sym = word.split(//).to_sym
			# 	letters_hash[:letter_sym] = LETTER_VALUE[value]
			# 	breakdown<< letters_hash
			# 	# sum = sum+LETTER_VALUE[value]
			# end
			# return sum



		# def self.highest_score_from(array_of_words)
		# 	# answer = array_of_words
		# 	# answer = array_of_words.max_by{|word| score(word)} 	#works but limits effective 														application of conditionals
		# 	answer = array_of_words.sort_by!{|word| score(word)}
		# 	#pseudo:
		# 	# if length of answer is =7
		# 	# 	use enumerable (drop_by?) to create new array of only 7 letter words
		# 	# 	if only one value,
		# 	# 		give as answer
		# 	# 	elsif
		# 	# 		give highest score
		# 	# 	elsif  a tie in score value
		# 	# 		give first word in array_of_words
		# 	# 	end
		# 	# elsif answer length is equal AND score length is equal
		# 	# 	give first given word
		# 	# elsif multiple answers with same score
		# 	# 	give answer with fewest letters
		# 	# elsif one clear highest score
		# 		answer =array_of_words.pop
    #
		#
		# end
	end
end
