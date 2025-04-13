str = '|/-\\|//-\\|'
loop do
  str.each_char do |c|
    print "\t#{c}\r"
    sleep 0.08
  end
end
