require 'pry'
# comment for class
class Palindromes
  Palindrome = Struct.new(:value, :factors)
  attr_reader :range, :least, :most, :products, :candidates 

  def initialize(input)
    @max_factor = input.fetch(:max_factor, 1)
    @min_factor = input.fetch(:min_factor, 1)
  end

  def generate
    @range = (@min_factor..@max_factor)
    products = get_products @range
    candidates = (get_palindromes products).sort
    @least = candidates.first
    @most = candidates.last

  end

  def largest
    factors = get_factors @most
    Palindrome.new(@most, factors)
  end

  def smallest
    factors = get_factors @least
    Palindrome.new(@least, factors)
  end

  def get_factors(number)
    @range
      .to_a
      .select { |n| (number % n).zero? }
      .map { |n| [n, number / n] }
      .select { |a| a.first >= @min_factor && a.last <= @max_factor}
      .map { |a| a.sort }
      .uniq
  end

  def get_products(range)
    products = []
    range.each do |x|
      range.each do |y|
        products << x * y 
      end
    end
    products.uniq!
    # products
  end

  def get_palindromes(products)
    products.select do |number|
      number.to_s.reverse == number.to_s
    end
  end
end
# binding.pry