# frozen_string_literal: true

puts 'please insert the amount of money you want to save every month:'
amount = gets.to_f
puts 'how many years you want to save?'
years = gets.to_i
s = 0
1.upto(years) do |year|
  1.upto(12) do |month|
    s += amount
    puts "for the year: #{year}, and the month: #{month} you saved: #{s} amount"
  end
end
