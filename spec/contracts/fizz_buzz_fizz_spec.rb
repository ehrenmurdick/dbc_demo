require './fizz'
require './fizzbuzz'

%w(pre_conditions post_conditions clause contract).each do |m|
  define_method m do |str=nil, &block|
    context [m, str].compact.join(' '), &block
  end
end

contract 'FizzBuzz.check -> Fizz.check' do
  pre_conditions do
    before { allow(Fizz).to receive(:check) }

    clause 'argument must be numeric' do
      example do
        FizzBuzz.check 'not numeric'
        expect(Fizz).to_not have_received(:check)
      end

      example do
        FizzBuzz.check 10
        expect(Fizz).to have_received(:check).with(10)
      end
    end
  end

  post_conditions do
    clause 'can return a string' do
      example do
        expect(Fizz.check(Fizz::DIVISOR)).to be_a String
      end
    end

    clause 'can return nil' do
      example do
        expect(Fizz.check(Fizz::DIVISOR+1)).to be_nil
      end
    end
  end
end
