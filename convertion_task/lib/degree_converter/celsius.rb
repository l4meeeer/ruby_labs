# frozen_string_literal: true

class Celsius
  @degrees = 0

  def initialize(degrees)
    @degrees = degrees
  end

  def convert_to_kelvin
    @degrees + 273.15
  end

  def convert_to_fahrenheit
    (@degrees * 9 / 5) + 32
  end
end
