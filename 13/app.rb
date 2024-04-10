hh = {}

def show_hash(hh)
  puts hh
end

loop do
  puts 'enter hash or empty'
  puts 'enter key'
  key = gets.strip
  break if key == ''

  if hh[key]
    puts 'this element is part of hash'
    next
  end
  puts 'enter value'
  value = gets.strip
  hh[key] = value
end

show_hash hh
