def translate(words)
	words.split.map do |word|
		translate_word(word)
	end.join(' ')
end
#keep this code
#wrap it on one word

def translate_word(word)
	vowels = ["a", "e", "i", "o", "u"]
	word = word.split(' ')
	if (vowels.include?(word[0]))
		word.join + "ay"
	else 
		until (!vowels.include?(word[0]))
			word.rotate!
			i += 1
			# word.rotate!
		end 
		return word.join + "ay"
	end 
end 



