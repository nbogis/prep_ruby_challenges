def combinations(arr_1,arr_2)
	restult_arr = []
	arr_1.each {|element|	restult_arr << element if arr_2.include?(element)}
	restult_arr
end

p combinations(["on","rope","to"],["to","rope"])