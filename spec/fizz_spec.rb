require './fizz'

describe Fizz do
  describe '#check' do
    subject { Fizz.check n }
    context 'match' do
      let(:n) { 5 }
      it { is_expected.to eq Fizz::FIZZ }
    end

    context 'no match' do
      let(:n) { 7 }
      it { is_expected.to be_nil }
    end
  end
end

