# frozen_string_literal: true

class Fahrenheit
  @degrees = 0

  def initialize(degrees)
    @degrees = degrees
  end

  def convert_to_celsius
    (@degrees - 32) * (5 / 9)
  end

  def convert_to_kelvin
    (@degrees - 32) * (5 / 9) + 273.15
  end
end
