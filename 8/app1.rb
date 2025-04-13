rand = rand(1..100)
nn = 10
1.upto(nn) do |i|
  print "#{i} try: yous stil have #{nn - i + 1} times to try-------- "
  puts 'enter a number from 1 to 100------:'

  n = gets.to_i
  if n == rand
    puts "your number is correct: #{n}"
    exit
  elsif n < rand
    puts 'random number is bigger'
  else
    puts 'random number is smaller'
  end
end
