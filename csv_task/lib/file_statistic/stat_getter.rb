# frozen_string_literal: true

require 'csv'

class StatGetter
  def initialize(file_path)
    @col = []
    CSV.foreach(file_path, { col_sep: ';' }) do |row|
      @col << row[1].to_f
    end
  end

  def get_max
    @col.max
  end

  def get_min
    @col.min
  end

  def get_average
    @col.sum / @col.size
  end

  def get_corrected_dispersion
    n = @col.size
    x = @col.inject { |sum, el| sum + el }.to_f / n
    @col.inject { |sum, el| sum + (el - x)**2 }.to_f / (n - 1)
  end
end
