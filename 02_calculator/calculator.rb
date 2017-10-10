#write your code here
def add(a, b)
	return a + b
end 

def subtract(a, b)
	return a - b
end

def sum(array)
	sum = 0
	array.each {|x| sum += x}
	return sum
end

def multiply(array)
	multiply = 1
	array.each {|x| multiply *= x}
	return multiply
end
