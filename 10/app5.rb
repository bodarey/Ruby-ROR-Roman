# frozen_string_literal: true

@arr = []
def add_item
  loop do
    puts 'press (enter) for exit '
    puts 'add the name'
    name = gets.strip
    break  if name == ''

    puts 'add the age'
    age = gets.strip
    @arr << [name, age]
  end
end

def show_list
  @arr.each_with_index do |item, i|
    puts "#{i + 1}  #{item}"
  end
end

def remove_item(item)
  @arr.delete_at item
end

add_item
remove_item 0
show_list
