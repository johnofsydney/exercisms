require 'pry'
# class comment
class Luhn
  def self.valid?(number)
    luhn = new(number)
    luhn.valid?
  end

  def initialize(number)
    make_digits number
  end

  def valid?
    return false if @digits.length < 2
    return false unless all_valid_digits?

    (checksum % 10).zero?
  end

  def make_digits(str)
    @digits = str
              .delete(' ')
              .chars
              .reverse
  end

  def all_valid_digits?
    @digits.join.match(/\D/).nil?
  end

  def checksum
    @digits
      .map(&:to_i)
      .each_slice(2)
      .sum { |a, b = 0| a + double(b) }
  end

  def double(num)
    return num * 2 if num * 2 < 10

    (num * 2) - 9
  end
end
