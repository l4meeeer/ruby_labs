# frozen_string_literal: true

require 'spec_helper'

describe Fahrenheit do
  subject do
    Fahrenheit.new(32)
  end

  describe '#convert_to_kelvin' do
    it { expect(subject.convert_to_kelvin).to eq 273.15 }
  end

  describe '#convert_to_celsius' do
    it { expect(subject.convert_to_celsius).to eq 0 }
  end
end
