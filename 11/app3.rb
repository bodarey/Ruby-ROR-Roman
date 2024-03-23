# dictionary shows number of translation words and the words
h = {cat: ['pisica', 'motan', 'mita'], 
     dog: ['caine', 'catel', 'dulau'], 
     girl: ['fata', 'fetita', 'domnisoara'] 
    }

while true
  	puts "==========","please enter a word in english"	
	word = gets.strip
	word = word.to_sym
	result =  h[word]
	puts "there are #{result.size} number(s) of translated words in this dictionary"
	result.each do |item|
		print "#{item}  "
        end
	puts
	puts '---------------------------' 
end

