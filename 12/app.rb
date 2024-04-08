# frozen_string_literal: true

dict = { 'cat' => %w[pisica mita], 'dog' => %w[caine catel] }

dict.each_value do |value|
  puts value.inspect
  puts value.size
  puts '=============='
end
