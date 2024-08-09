f = File.open('file.txt', 'r+')
output = File.open('output.txt', 'w')
while (line = f.gets)
  condition = line.strip.length == 6
  puts line if condition
  output.puts line if condition

end

def is_password_weak?(password)
  password.strip!
  f = File.open('file.txt', 'r')
  while (line = f.gets)
    line.strip!
    if password.include? line
      answer = 'weak'
      break
    else
      answer = 'your password is not weak'
    end

  end
  f.close
  answer == 'weak'
end

puts 'enter your password'
password = gets
puts is_password_weak? password
