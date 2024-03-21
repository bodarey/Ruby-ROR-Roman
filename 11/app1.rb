hh = {}

at_exit {
 puts hh
}


while true
	puts "enter name, ENTER	 for stop"
	name = gets.strip
	abort if name == ''
	puts "enter phone number"
	phone = gets.strip
	hh[name] = phone

end

