# frozen_string_literal: true

require_relative 'file_statistic/file_stat'

print %(
    Enter the number of statistics you want to receive
       1. maximum
       2. minimum
       3. average value
       4. corrected sample variance
    Enter: )

statistic = gets.chomp
stat_getter = StatGetter.new('file_statistic/file.csv')

case statistic
when '1'
  puts stat_getter.get_max
when '2'
  puts stat_getter.get_min
when '3'
  puts stat_getter.get_average
when '4'
  puts stat_getter.get_corrected_dispersion
else
  puts 'Incorrect input'
end
