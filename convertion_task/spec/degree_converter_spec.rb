# frozen_string_literal: true

require 'spec_helper'

describe DegreeConverter do
  subject do
    DegreeConverter.new(value, unit)
  end

  context 'when the unit is C' do
    let(:value) { 0 }
    let(:unit) { 'C' }
    describe '#conversion' do
      context 'returns 32 if init with Fahrenheit' do
        it { expect(subject.conversion('F')).to eq 32 }
      end
      context 'returns 273.15 if init with Kelvin' do
        it { expect(subject.conversion('K')).to eq 273.15 }
      end
    end
  end

  context 'when the unit is K' do
    let(:value) { 273.15 }
    let(:unit) { 'K' }
    describe '#conversion' do
      context 'returns 0 if init with Celsius' do
        it { expect(subject.conversion('C')).to eq 0 }
      end
      context 'returns 32 if init with Fahrenheit' do
        it { expect(subject.conversion('F')).to eq 32 }
      end
    end
  end

  context 'when the unit is F' do
    let(:value) { 32 }
    let(:unit) { 'F' }
    describe '#conversion' do
      context 'returns 0 if init with Celsius' do
        it { expect(subject.conversion('C')).to eq 0 }
      end
      context 'returns 273.15 if init with Fahrenheit' do
        it { expect(subject.conversion('K')).to eq 273.15 }
      end
    end
  end
end
