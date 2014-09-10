require 'rspec'
require './fizzbuzz'

describe FizzBuzz do
  describe '#check' do
    subject { FizzBuzz.check n }

    context 'n is divisible by 3 and 5' do
      let(:n) { 15 }
      it { is_expected.to eq 'fizzbuzz' }
    end

    context 'n is divisible by 3' do
      let(:n) { 9 }
      it { is_expected.to eq 'buzz' }
    end

    context 'n is divisible by 5' do
      let(:n) { 10 }
      it { is_expected.to eq 'fizz' }
    end

    context 'n is divisible by neither' do
      let(:n) { 13 }
      it { is_expected.to eq '13' }
    end
  end
end
