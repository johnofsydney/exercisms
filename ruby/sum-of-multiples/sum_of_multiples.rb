# # Sum Of Multiples
#
# Given a number, find the sum of all the unique multiples of particular numbers up to
# but not including that number.
#
# If we list all the natural numbers below 20 that are multiples of 3 or 5,
# we get 3, 5, 6, 9, 10, 12, 15, and 18.
#
# The sum of these multiples is 78.
require 'pry'

class SumOfMultiples

  def initialize *args
    @args = args
  end

  def to num

    if num == 1 || @args.length == 0
      return 0
    end


    nums = (1 .. num - 1).to_a
    multiples = []

    @args.each do |factor|
      nums.each do |n|
        if n % factor == 0
          multiples.push n
        end
      end
    end

    multiples.uniq.sum
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end


# binding.pry
