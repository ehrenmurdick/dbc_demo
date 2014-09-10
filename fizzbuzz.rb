require './fizz'
require './buzz'

module FizzBuzz
  extend self

  def check n
    if Fizz.check(n) && Buzz.check(n)
      'fizzbuzz'
    elsif Fizz.check(n)
      'fizz'
    elsif Buzz.check(n)
      'buzz'
    else
      n.to_s
    end
  end
end
