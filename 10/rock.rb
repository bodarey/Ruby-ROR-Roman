# frozen_string_literal: true

def get_move
  %i[rock scissors paper].sample
end

puts 'enter rock, scissors, paper'
answer = gets.strip
computer = get_move
puts "computer choose : #{computer} "
if answer.to_sym == computer
  (puts 'equal'
   exit)
end

case answer
when 'rock'
  computer == :scissors ? (puts 'player win') : (puts 'computer win')
when 'scissors'
  computer == :rock ? (puts 'computer win') : (puts 'player win')
when 'paper'
  computer == :scissors ? (puts 'computer win') : (puts 'player win')
end
