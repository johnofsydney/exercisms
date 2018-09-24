require 'pry'

class Sieve

  def initialize num
    @num = num
  end

  def is_prime?
    is_prime = true

    (2.. @num -1).to_a.each do |n|
      if @num % n == 0
        is_prime = false
      end
    end

    is_prime
  end


  def primes
    primes = []
    range = (2..@num).to_a


    primes
  end

  def stuff
    {:num => @num,
    :two => "three"}
  end


end

binding.pry













































# require 'pry'
# class Sieve
#
#   def initialize num
#     @num = num
#   end
#
#
#   def is_prime number_to_test
#     prime = true
#     rooted_num = Math.sqrt(number_to_test)
#     arr = (2 .. rooted_num ).to_a
#     arr.each do |n|
#       if (number_to_test % n) == 0
#         prime = false
#       end
#     end
#     # binding.pry
#     return prime
#   end
#
#   def primes
#     results = []
#     if @num > 1
#
#
#       arr = (2 .. @num).to_a
#       arr.each do |n|
#         # puts n
#         if is_prime n
#           results.push(n)
#         end
#       end
#     end
#     results
#   end
#
# end
#
# puts "hello"
#
# # a = Sieve.new(9)
# # b = a.primes
# # puts b
# # puts a
