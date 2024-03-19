# frozen_string_literal: true

arr = %w[jessie robert junior lidia portman walt]
arr.each do |i|
  puts i
end
puts '============================'

arr2 = arr[1..3]
arr2[1] = arr2[1].upcase
puts arr2
