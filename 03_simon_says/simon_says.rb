def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, num = 2)
	(" #{string}" * num).strip
end

def start_of_word(string, num)
	string[0..num - 1]
end

def first_word(string)
	string_arr = string.split(' ')
	string_arr[0]
end

def titleize(string)
	little_words = ["a", "an", "the", "and", "but", "or", "for", "nor", "at", "to", "from", "by", "on", "of", "if", "over"]
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
