require './fizz'
require './buzz'

module FizzBuzz
  extend self

  def check n
    return unless Numeric === n

    results = [Fizz.check(n), Buzz.check(n)].compact
    if results.any?
      results.join
    else
      n.to_s
    end
  end
end
