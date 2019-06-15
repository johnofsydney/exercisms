require 'pry'

# Luhn class for Exercism
class Luhn
  def self.strip_spaces(str)
    str.gsub(/\s/, '')
  end

  def self.contains_non_digits(number)
    return false if number.match(/\D/).nil?

    true
  end

  def self.double_every_second(n, i)
    n = n.to_i
    return n if i.even?

    n *= 2
    return n if n < 10

    n - 9
  end

  def self.valid? (number)
    number = strip_spaces number
    return false if number.length < 2
    return false if contains_non_digits number

    total =  number
              .chars
              .reverse
              .each_with_index
              .map { |n, i| double_every_second n, i }
              .sum

    (total % 10).zero?
  end
end
