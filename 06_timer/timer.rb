class Timer
	attr_accessor :seconds

	def seconds
		@seconds = 0
	end

	def time_string
		hr = "0#{@seconds / 3600}"[-2, 2]
		min = "0#{(@seconds / 60) - (hr.to_i * 60)}"[-2, 2]
		sec = "0#{@seconds - (min.to_i * 60)}"[-2, 2]
		"#{hr}:#{min}:#{sec}"
	end
end