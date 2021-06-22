class Luhn
  def self.valid?(account)
    new(account).valid?
  end

  def valid?
    return false unless digits.length > 1
    return false unless valid_digits?

    (checksum % 10).zero?
  end

  private

  attr_reader :account, :digits

  REGEX = {
    only_digits: /\d/
  }

  def initialize(number_as_string)
    @account = number_as_string
    @digits = make_digits
  end

  def make_digits
    account
      .delete(' ')
      .chars
      .reverse
  end

  def valid_digits?
    digits.all?(REGEX[:only_digits])
  end

  def checksum
    digits
      .map(&:to_i)
      .each_slice(2)
      .sum { |first, second = 0| first + double(second) }
  end

  def double(num)
    return num * 2 if num * 2 < 10

    (num * 2) - 9
  end
end


if $PROGRAM_NAME == __FILE__
  my_luhn = Luhn.new('123423458')
  puts my_luhn.double(23)
  puts my_luhn.checksum
  puts my_luhn.valid_digits?
  puts my_luhn.make_digits('13424')
  puts my_luhn.make_digits('13424')
  puts my_luhn.valid?
end
