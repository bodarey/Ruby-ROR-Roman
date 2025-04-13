hh = { dog: 'caine', cat: 'pisica', house: 'home', horse: 'cal' }

while true

  puts 'insert the word in english '
  word = gets.strip
  word = word.to_sym
  puts hh[word], '----------------'

end
