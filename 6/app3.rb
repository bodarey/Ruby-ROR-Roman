puts "how much money do you want to save?:"
m = gets.to_f

puts "how many months you want to save:?"
months = gets.to_f

s = 0
1.upto(months) do |x|
   s = s + m
end
puts "saved money are: #{s}"

#1:20