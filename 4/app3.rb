puts 'enter  a number:'
x = gets.to_i
puts 'enter a string:'
str = gets.chomp
str = "#{str} "
puts ' string * x times is:'
print str * x
