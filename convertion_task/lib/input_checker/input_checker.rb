# frozen_string_literal: true

class InputChecker
  def number?(string)
    string if Float(string)
  rescue StandardError
    abort('Value not a numeric')
  end

  def unit_is_true?(string)
    if (string == 'C') || (string == 'K') || (string == 'F')
      string
    else
      abort('Unit is not true(C, K, F)')
    end
  end
end
