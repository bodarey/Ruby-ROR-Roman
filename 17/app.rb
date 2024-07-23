# frozen_string_literal: true

f = File.open 'test.txt', 'r'
arr = []
s = ''
while (line = f.gets)
  l = line.split(',')
  arr << l[1].to_i
  l[1] = 100 if l[0].strip == 'Апрель'
  s += "#{l[0].strip},#{l[1].to_s.strip}\n"
end

f.close

puts "the data for each month from file test.txt are:\n", arr
puts 'the sum of numbers for all months are:'
puts arr.reduce(:+)
puts 'new string is:'
puts s

# f = File.open 'test.txt', 'w'
# f.write s
# f.close
#===============================

arr2 = s.split
i = 0
ss = 0
while i < 6
  ss += arr2[i].split(',')[1].to_i
  i += 1
end
puts 'sum of numbers for first 6 months is:'
puts ss
