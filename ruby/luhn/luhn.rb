class Luhn
  def self.valid?(number_as_string)
    luhn = new(number_as_string)
    luhn.valid?
  end

  def initialize(number_as_string)
    @digits = make_digits(number_as_string)
  end

  def valid?
    return false unless @digits.length > 1
    return false unless valid_digits?

    (checksum % 10).zero?
  end

  def make_digits(number_as_string)
    number_as_string
      .delete(' ')
      .chars
      .reverse
  end

  def valid_digits?
    @digits.all?(/\d/)
  end

  def checksum
    @digits
      .map(&:to_i)
      .each_slice(2)
      .sum { |first, second = 0| first + double(second) }
  end

  def double(num)
    return num * 2 if num * 2 < 10

    (num * 2) - 9
  end
end

