# frozen_string_literal: true

x = 0
10.times do |_i|
  10.times do |_j|
    x += 1
  end
end

print x

puts "\n------------------"

10.times do |xx|
  puts '!' * xx
end
