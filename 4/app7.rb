50.times do |i|
  puts "i = #{i}: even" if i.even?
  puts "i = #{i}: odd" unless i.even?
end

puts '-----------------------'
10.times do |i|
  (i.even? && x = "i = #{i}: even") || (x = "i = #{i}: odd")
  puts x
end
