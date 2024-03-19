# frozen_string_literal: true

arr = %w[jessie robert junior lidia portman walt]
i = 1
loop do
  puts 'press (e) for exit or number of person to delete'
  arr.each do |item|
    puts "#{i} #{item}"
    i += 1
  end
  i = 1

  d = gets.strip
  if d == 'e'
    (puts '--------', arr
     exit)
  end
  arr.delete_at d.to_i - 1
  puts '-----'
end
