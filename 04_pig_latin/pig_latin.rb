def translate(phrase)
	phrase.split.each do |word|
		vowels = ["a", "e", "i", "o", "u"]
		uppercase = false

		if /[A-Z]/.match(word[0])
			uppercase = true
		end

		if vowels.include?(word[0].downcase)
			word.replace "#{word}ay"

		elsif word[0, 2].downcase == "qu"
			word.replace "#{word[2..word.length]}quay"
		
		elsif word[0, 3].downcase == "squ"
			word.replace "#{word[3..word.length]}squay"

		else
			first_vowel = word.index(/[aeiou]/)
			word.replace "#{word[first_vowel..word.length]}#{word[0..first_vowel - 1]}ay"
		end

		if uppercase == true
			word.replace "#{word.capitalize}"
		end
	end
	.join(' ')
end
