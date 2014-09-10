require './buzz'

describe Buzz do
  describe '#check' do
    subject { Buzz.check n }
    context 'match' do
      let(:n) { 3 }
      it { is_expected.to eq 'buzz' }
    end

    context 'no match' do
      let(:n) { 10 }
      it { is_expected.to be_nil }
    end
  end
end

