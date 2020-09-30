# frozen_string_literal: true

require_relative 'degree_converter/degree_converter'
require_relative 'input_checker/input_checker'

checker = InputChecker.new

puts('Enter the value to convert:')
value = checker.number?(gets.chomp)

puts('Enter the number system from which you want to translate (C, K, F):')
system_from = checker.unit_is_true?(gets.chomp)

puts('Enter the number system in which you want to translate (C, K, F):')
system_to = checker.unit_is_true?(gets.chomp)

print DegreeConverter.new(value.to_f, system_from).conversion(system_to), "\n"
