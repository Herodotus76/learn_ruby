class Book
attr_reader :title

	def title=(title)
		@title = titleize(title)
	end

	def titleize(string)
	little_words = ["a", "an", "in", "the", "and", "but", "or", "for", "nor", "at", "to", "from", "by", "on", "of", "if", "over"]
	string_arr = string.split.each do |x|
		x.capitalize!
	end
	string_arr[1, string_arr.length].each do |x|
		if little_words.include?(x.downcase)
			x.downcase!
		end
	end
	string_arr.join(' ')
	end
end
