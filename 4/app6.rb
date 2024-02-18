puts "please enter a text"
str = gets.chomp
puts "please enter a number:"
x = gets.to_i
puts "please enter a float number"
f =  gets.to_f
print str + " " + x.to_s + " " + f.to_s
puts

########################## using interpolation
puts "please enter a text"
x = gets.chomp
puts "please enter a number"
n = gets.to_i
puts "please ener a float number:"
f = gets.to_f
puts "The text you entered is: #{x} and the integer number is: #{n}, the float number is:#{f}"