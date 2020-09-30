# frozen_string_literal: true

class Kelvin
  @degrees = 0

  def initialize(degrees)
    @degrees = degrees
  end

  def convert_to_celsius
    @degrees - 273.15
  end

  def convert_to_fahrenheit
    (@degrees - 273.15) * 9 / 5 + 32
  end
end
