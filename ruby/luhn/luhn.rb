require 'pry'
# class comment
class Luhn
  def self.valid?(number)
    luhn = new(number)
    luhn.valid?
  end

  def initialize(number)
    @digits = (strip_spaces number).chars.reverse
  end

  def valid?
    return false if @digits.length < 2
    return false if contains_non_digits?

    (checksum % 10).zero?
  end

  def strip_spaces(str)
    str.gsub(/\s/, '')
  end

  def contains_non_digits?
    !@digits.join.match(/\D/).nil?
  end

  def checksum
    @digits
      .map(&:to_i)
      .each_slice(2)
      .sum { |a, b| a + double(b) }
  end

  def double(num)
    return 0 if num.nil?
    return num * 2 if num * 2 < 10

    (num * 2) - 9
  end
end
