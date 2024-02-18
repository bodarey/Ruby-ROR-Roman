50.times { |i|
	puts "i = #{i}: even" if i.even?
 	puts "i = #{i}: odd" unless i.even?


}

puts "-----------------------"
10.times { |i|
	(i.even? && x = "i = #{i}: even") || (x = "i = #{i}: odd") 
	puts x 
 }