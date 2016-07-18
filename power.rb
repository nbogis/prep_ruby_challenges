def power(base, exponent)
	result = base
	(1...exponent).each {result *= base}
	result
end

puts power(2,3)