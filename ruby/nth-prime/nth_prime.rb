require "pry"
class Prime
  class << self # means you don't have to use self.nth etc

    def is_prime number_to_test
      prime = true

      number_to_test
      arr = (2 .. (number_to_test - 1) ).to_a
      arr.each do |n|
        if (number_to_test % n) == 0
          prime = false
        end
      end

      return prime
    end

    def nth num

      throw ArgumentError.new unless num > 0

      primes = [2]
      candidate = primes.last

      while primes.length < num
        candidate = candidate + 1
        if is_prime candidate
          primes.push candidate
        end
      end
      p primes
      primes.last
    end
  end
end
