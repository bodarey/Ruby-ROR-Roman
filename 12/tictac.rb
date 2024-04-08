# frozen_string_literal: true

def show_matrix(matrix)
  puts "╔═══╦═══╦═══╗\n"
  puts "║ #{matrix[0][0]} ║ #{matrix[0][1]} ║ #{matrix[0][2]} ║        "
  puts "╠═══╬═══╬═══╣\n"
  puts "║ #{matrix[1][0]} ║ #{matrix[1][1]} ║ #{matrix[1][2]} ║        "
  puts "╠═══╬═══╬═══╣\n"
  puts "║ #{matrix[2][0]} ║ #{matrix[2][1]} ║ #{matrix[2][2]} ║        "
  puts '╚═══╩═══╩═══╝  '
end

# return o,x or false
def check_matrix(a)
  i = 0
  while i < 3
    if a[i][0] == a[i][1] && a[i][1] == a[i][2]
      return a[i][0]
    elsif a[0][i] == a[1][i] && a[1][i] == a[2][i]
      return a[0][i]
    elsif a[0][0] == a[1][1] && a[1][1] == a[2][2]
      return a[1][1]
    elsif a[2][0] == a[1][1] && a[1][1] == a[0][2]
      return a[1][1]
    end

    i += 1
  end
  false
end

# return new array with position choosen
def move_comp(a)
  return if is_matrix_full?(a)

  move1 = rand(0..2)
  move2 = rand(0..2)
  if a[move1][move2].strip == ''
    a[move1][move2] = 'o'
    a
  else
    move_comp a
  end
end

# check if matrix is full
def is_matrix_full?(a)
  a.each do |line|
    line.each do |el|
      return false if el.strip == ''
    end
  end
  true
end

def is_winner?(a)
  if check_matrix(a) == 'x'
    puts 'player win '
    return true
  end
  if check_matrix(a) == 'o'
    puts 'computer win '
    return true
  end
  false
end

matrix = Array.new(3) { [' ', ' ', ' '] }
show_matrix matrix

until is_matrix_full? matrix
  puts 'choose coordinator matrix[first][second]'
  puts 'add first(1-3)'
  first = gets.to_i - 1
  puts 'add second(1-3)'
  second = gets.to_i - 1
  if matrix[first][second] == ' '
    matrix[first][second] = 'x'
    show_matrix matrix
  else
    puts 'you entered a occupied coordinate '
    next
  end
  exit if is_winner? matrix
  next if is_matrix_full? matrix

  puts 'computer move: '
  matrix = move_comp matrix
  show_matrix matrix
  exit if is_winner? matrix

end

puts 'equal'
