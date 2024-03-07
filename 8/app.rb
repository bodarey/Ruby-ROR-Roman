# frozen_string_literal: true

puts 'please enter: number operator number ex: a+b'
num = gets.strip
if num.size < 2
  # puts "number of operators or numbers was incorect"
  # exit
  a = num.to_i
  operator = gets.strip
  b = gets.to_i

else
  a, operator, b = num.partition(/\D+/)
  a = a.to_i
  b = b.to_i
  operator.strip!

end
rez = 0
case operator
when '+'
  rez = a + b
when '**'
  rez = a**b

when '-'
  rez = a - b
when '*'
  rez = a * b
when '/'
  if b.zero?
    puts 'error divided by 0'
    exit
  end
  rez = a.to_f / b
else
  puts 'opearator must be +,-,*,/**'
  exit
end

puts rez
# puts "num = #{num.split("")}"

# #puts "b = #{b}"
# puts "operator = #{operator}"
