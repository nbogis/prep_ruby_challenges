#### rectangle overlap #####
def overlap(array_1,array_2)
	# first and second cases check if the second rectangle is overlapping with the first
	# thrid and fourth cases chck if the first rectangle is overlapping with the second
	if ((array_1[0][0]...array_1[1][0]).include?(array_2[0][0]) && (array_1[0][1]...array_1[1][1]).include?(array_2[0][1]) ||
		(array_1[0][0]...array_1[1][0]).include?(array_2[1][0]) && (array_1[0][1]...array_1[1][1]).include?(array_2[1][1]) ||
		(array_2[0][0]...array_2[1][0]).include?(array_1[0][0]) && (array_2[0][1]...array_2[1][1]).include?(array_1[0][1]) ||
		(array_2[0][0]...array_2[1][0]).include?(array_1[1][0]) && (array_2[0][1]...array_2[1][1]).include?(array_1[1][1])
		)
		true
	else
		false 
	end
end

puts overlap([ [0,0],[3,3] ], [ [1,1],[4,5] ] )
