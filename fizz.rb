module Fizz
  extend self
  FIZZ    = 'fizz'
  DIVISOR = 5

  def check n
    FIZZ if (n % DIVISOR) == 0
  end
end
