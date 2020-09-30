# frozen_string_literal: true

require_relative 'fahrenheit'
require_relative 'celsius'
require_relative 'kelvin'

class DegreeConverter
  @value = 0

  def initialize(value, unit)
    if (unit == 'C') || (unit == 'c')
      @value = Celsius.new(value)
    elsif (unit == 'K') || (unit == 'k')
      @value = Kelvin.new(value)
    elsif (unit == 'F') || (unit == 'f')
      @value = Fahrenheit.new(value)
    end
  end

  def conversion(unit)
    case unit
    when 'C' || 'c'
      @value.convert_to_celsius
    when 'K' || 'k'
      @value.convert_to_kelvin
    when 'F' || 'f'
      @value.convert_to_fahrenheit
    end
  end
end
