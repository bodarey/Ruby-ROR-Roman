class Book
  def initialize
    @hh = {}
    @last_person = 0
  end

  def add_person
    loop do
      puts 'enter hash or empty'
      puts 'enter key'
      key = gets.strip
      # puts " ---- #{@hh.inspect}"
      break if key == ''

      if @hh[key]
        puts 'this element is part of hash'
        next
      end
      puts 'enter value'
      value = gets.strip
      @hh[key] = value
      @last_person = key
    end
  end

  attr_reader :last_person

  def show_hash
    puts @hh
  end
end

b = Book.new

b.add_person
b.show_hash
puts "last element of hh is:   #{b.last_person}"
