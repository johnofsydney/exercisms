require "pry"


class IsbnVerifier

  def self.valid? string

    digits = string.scan(/\w/)
    if digits[9] == "X"
      digits[9] = "10"
    end

    digits = digits.map do |digit|
      digit.to_i
    end

    multed = digits.map.with_index do |digit, index|
      (10 - index) * digit
    end

    if digits.length != 10
      return false
    end

    if multed.sum % 11 != 0
      return false
    end

    true

    # binding.pry
  end
end

module BookKeeping
  VERSION = 1
end
