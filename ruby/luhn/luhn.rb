require 'pry'

# Luhn class for Exercism
class Luhn
  def self.valid? (number)
    @number = strip_spaces number
    return false if @number.length < 2
    return false if contains_non_digits

    (checksum % 10).zero?
  end

  class << self
    private

    def checksum
      @number
        .chars
        .reverse
        .each_slice(2)
        .map { |arr| double_every_second arr }
        .flatten
        .sum
    end

    def strip_spaces(str)
      str.gsub(/\s/, '')
    end

    def contains_non_digits
      !@number.match(/\D/).nil?
    end

    def double_every_second(arr)
      first = arr[0].to_i
      second = double_second arr[1].to_i

      [first, second]
    end

    def double_second(num)
      return num * 2 if num * 2 < 10

      (num * 2) - 9
    end
  end
end

# binding.pry
