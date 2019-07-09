require 'pry'

class Triplet

  def initialize *args
    @args = *args
  end

  def sum
    @args.sum
  end

  def product
    @args.reduce do |accumulator, element|
      accumulator * element
    end
  end

  def pythagorean?
    @args[0] ** 2 + @args[1] ** 2 == @args[2] ** 2
  end

  def self.where(options={})

    max_factor = options.fetch(:max_factor, 1)
    min_factor = options.fetch(:min_factor, 1)

    triplets = (min_factor..max_factor).to_a.combination(3).to_a
    .select(&:pythagorean?)

  end






end
