# frozen_string_literal: true

puts 'enter how many guests will come'
guests = gets.to_i

if guests.negative?
  puts 'error:'
  exit

end
puts 'no one' if guests.zero?
puts 'one' if guests == 1
puts 'two' if guests == 2
puts 'more than two ' if guests.between?(3, 100_000)
