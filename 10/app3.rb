# frozen_string_literal: true

arr = []
loop do
  puts 'press (enter) for exit '
  puts 'add the name'
  name = gets.strip
  break  if name == ''

  puts 'add the age'
  age = gets.strip

  arr << [name, age]
end

arr.each_with_index do |item, i|
  puts "#{i + 1}  name: #{item[0]}\tage: #{item[1]}"
end
