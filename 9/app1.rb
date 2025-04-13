a = []
puts 'please enter your favorite calors:'
while (str = gets.strip;)
  break if str == 'stop'

  a << str

end
puts '---------------------'
puts a
puts '---------------------'
puts a.reverse
puts '---------------------'
puts a.uniq
