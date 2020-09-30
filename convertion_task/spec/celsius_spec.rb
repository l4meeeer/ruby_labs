# frozen_string_literal: true

require 'spec_helper'

describe Celsius do
  subject do
    Celsius.new(0)
  end

  describe '#convert_to_kelvin' do
    it { expect(subject.convert_to_kelvin).to eq 273.15 }
  end

  describe '#convert_to_fahrenheit' do
    it { expect(subject.convert_to_fahrenheit).to eq 32 }
  end
end
