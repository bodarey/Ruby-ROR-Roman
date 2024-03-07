def get_move
	[:left,:right,:up,:down].sample
end

puts get_move.is_a? Symbol
