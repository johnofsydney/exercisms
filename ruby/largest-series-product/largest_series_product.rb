# # Largest Series Product
#
# Given a string of digits, calculate the largest product for a contiguous
# substring of digits of length n.
#
# For example, for the input `'1027839564'`, the largest product for a
# series of 3 digits is 270 (9 * 5 * 6), and the largest product for a
# series of 5 digits is 7560 (7 * 8 * 3 * 9 * 5).
require "pry"

class Series

  def initialize(string)
    @sequence = string.chars.map do |digit|
      digit.to_i
   end
  end


  def largest_product(num)
    if num > @sequence.length || num < 0
      raise ArgumentError
    end
    if @sequence.join("").scan(/\d/).length != @sequence.length
      raise ArgumentError
    end

    # binding.pry

    if num == 0
      return 1
    end

    largest_product = 0

    @sequence.each_with_index do |digit, index|
      if index + num > @sequence.length
        # nothing
      else
       this_pass = @sequence.slice(index, num).reduce(:*)
       if this_pass > largest_product
         largest_product = this_pass
       end
      end
    end
    largest_product
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

# binding.pry
