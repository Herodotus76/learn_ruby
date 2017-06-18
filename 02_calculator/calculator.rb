def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(array)
	array.inject(0, :+)
end

def multiply(array)
	array.inject(:*)
end

def power(x,y)
	x ** y
end

def factorial(x)
	(1..x).inject(1, :*)
end