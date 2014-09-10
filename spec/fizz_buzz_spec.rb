require 'rspec'
require './fizzbuzz'

describe FizzBuzz do
  describe '.check' do
    let(:fizz) { nil }
    let(:buzz) { nil }
    subject { FizzBuzz.check 13 }

    before do
      allow(Fizz).to receive(:check).and_return(fizz)
      allow(Buzz).to receive(:check).and_return(buzz)
    end

    it { is_expected.to eq '13' }

    context 'fizz' do
      let(:fizz) { 'fizz' }
      it { is_expected.to eq 'fizz' }
    end

    context 'buzz' do
      let(:buzz) { 'buzz' }
      it { is_expected.to eq 'buzz' }
    end

    context 'fizzbuzz' do
      let(:fizz) { 'fizz' }
      let(:buzz) { 'buzz' }
      it { is_expected.to eq 'fizzbuzz' }
    end
  end
end
