# frozen_string_literal: true

puts 'are you happy with your salary? (Y/N)'
answer = gets.strip

if answer.downcase == 'y'
  puts 'very good'
elsif answer.downcase == 'n'
  puts 'try another offer'

end
