# frozen_string_literal: true

require 'pry-byebug'
# search a file a a directory

def getfilename(dir, name = 'test')
  getfile = lambda { |dir, name|
    Dir.chdir dir
    Dir.entries(dir).each do |i|
      # binding.pry
      #	  puts i
      puts "#{i} => #{Dir.pwd}" if i == name
      next unless File.directory?(i) && (i != '.') && (i != '..')

      dir = "#{Dir.pwd}/#{i}"
      Dir.chdir dir
      getfile.call dir, name
      Dir.chdir '..'
    end
  }
  getfile.call dir, name
end
getfilename('/home/andy', 'fli747757.pdf')
