# frozen_string_literal: true

arr = []

loop do
  puts 'press (enter) for exit '
  name = gets.strip
  break if name == ''

  arr << name
end

arr.each_with_index do |item, i|
  puts "#{i + 1}  #{item}"
end
