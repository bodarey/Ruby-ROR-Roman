require 'pry-byebug'
# search a file a a directory
def getfile dir, name='test'
	Dir.chdir dir
	Dir.entries(dir).each do |i|
#binding.pry
#	  puts i
	  puts "#{i} => #{Dir.pwd}" if i == name
	  if File.directory?(i) and (i != '.') and (i != '..')
		dir = "#{Dir.pwd}/#{i}"
		Dir.chdir dir
		getfile dir, name
		Dir.chdir '..'
	  end
	end

end
#getfile '/home/andy/Desktop', 'abc.html'
getfile '/home/andy','fli747757.pdf'