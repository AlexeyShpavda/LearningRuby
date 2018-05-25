=begin
 Refactoring is the process by which we improve a code's structure,
 appearance, and/or performance without modifying its overall behavior.
=end

puts "### Omit Needless Words ###"
=begin
  require 'prime'   # This is a module.

  def first_n_primes(n)

    unless n.is_a? Integer
      return "n must be an integer."
    end

    if n <= 0
      return "n must be greater than 0."
    end

    return Prime.first n
  end

first_n_primes(10)
=end
require 'prime'   # This is a module.

def first_n_primes(n)

  return "n must be an integer." unless n.is_a? Integer

  return "n must be greater than 0." if n <= 0

  return Prime.first n
end

puts first_n_primes(10)