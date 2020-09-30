# frozen_string_literal: true

require 'spec_helper'

describe Kelvin do
  subject do
    Kelvin.new(273.15)
  end

  describe '#convert_to_fahrenheit' do
    it { expect(subject.convert_to_fahrenheit).to eq 32 }
  end

  describe '#convert_to_celsius' do
    it { expect(subject.convert_to_celsius).to eq 0 }
  end
end
