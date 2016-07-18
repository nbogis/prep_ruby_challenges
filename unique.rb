def uniques(array)
	array.reverse!
	array.each_with_index {|element,index| array.delete_at(index) if array.count(array[index]) > 1}
	array.reverse!
end 

p uniques([1,5,"frog", 2,1,3,"frog"])
