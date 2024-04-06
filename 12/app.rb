dict = {'cat' => ['pisica','mita'], 'dog' => ['caine','catel']}

dict.each_value do |value|
   puts value.inspect
   puts value.size
   puts '=============='
end