f = File.open 'test.txt', 'r'
arr = []
while (line =f.gets)
  arr << line.split(',')[1].to_i

end

f.close
puts "the data for each month from file test.txt are:\n", arr
puts "the sum of numbers for all months are:"
puts arr.reduce(:+) 