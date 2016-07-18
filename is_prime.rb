def is_prime?(number)
	prime_number(number,number-1)
end

def prime_number(number,division)
	return true if division == 1
	if number % division == 0
		return false
	else
		prime_number(number,division-1)
	end
end

puts is_prime?(11)
