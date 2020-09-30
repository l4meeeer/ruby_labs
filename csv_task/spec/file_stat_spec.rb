# frozen_string_literal: true

describe StatGetter do
  subject do
    StatGetter.new('spec/file_spec.csv')
  end

  describe '#get_max' do
    it { expect(subject.get_max).to eq 20 }
  end

  describe '#get_min' do
    it { expect(subject.get_min).to eq 10 }
  end

  describe '#get_average' do
    it { expect(subject.get_average).to eq 15 }
  end
end
