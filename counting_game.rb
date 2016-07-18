#### The Counting Game #####
# 0 friends are sitting in a circle around a table and decide to play a new
# game. In it, they count up through the numbers from 1 to 100. The first
# person says "1", the second says "2" and so on... but with a few catches:

# Whenever the number is divisible by 7, they switch directions. So person 6
# will say "6", person 7 will say "7", then person 6 again will say "8".
# Whenever the number is divisible by 11, they skip the next person for the
# following number. For instance, if person 3 says "33", person 5 will say
# "34" instead (person 4 gets skipped).
def counting_game(num_players, max_counter)
	num_counter = 1
	people_counter = 0
	increasing_direction_flag = true
	people_array = Array.new(num_players)
	people_array.length.times { |i| people_array[i] = i + 1 }

	until num_counter > max_counter
		puts "Person #{people_array[people_counter]} says: #{num_counter}"
		if num_counter % 7 == 0 && num_counter % 11 == 0
			increasing_direction_flag = !increasing_direction_flag
			increasing_direction_flag == true ? people_counter += 1 :
												people_counter -= 1
		elsif num_counter % 7 == 0
			increasing_direction_flag = !increasing_direction_flag
		elsif num_counter % 11 == 0
			increasing_direction_flag == true ? people_counter += 1 :
												people_counter -= 1
		end
		
		increasing_direction_flag == true ? people_counter += 1 :
											people_counter -= 1
		people_counter %= num_players
		num_counter += 1
	end
end

counting_game(10, 100)
