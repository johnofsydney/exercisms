require 'pry'
# comment
class Triplet
  def initialize(*args)
    @args = *args.flatten
  end

  def sum
    @args.sum
  end

  def product
    @args.reduce(&:*)
  end

  def pythagorean?
    @args[0]**2 + @args[1]**2 == @args[2]**2
  end

  class << self
    def where(input)
      @min_factor = input.fetch(:min_factor, 1)
      @max_factor = input.fetch(:max_factor, 1)
      @sum = input.fetch(:sum, nil)

      return pythagorean_triplets unless @sum

      pythagorean_triplets.select{ |t| t.sum == @sum }
    end

    private

    def pythagorean_triplets
      (@min_factor..@max_factor)
        .to_a
        .combination(3)
        .select { |arr| Triplet.new(arr).pythagorean? }
        .map { |arr| Triplet.new(arr) }
    end
  end
end
