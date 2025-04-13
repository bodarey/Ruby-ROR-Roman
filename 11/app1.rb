hh = {}

at_exit do
  puts hh
end

while true
  puts "enter name, ENTER\t for stop"
  name = gets.strip
  abort if name == ''
  puts 'enter phone number'
  phone = gets.strip
  hh[name] = phone

end
