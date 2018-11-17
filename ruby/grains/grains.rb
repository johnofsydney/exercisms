class Grains

  BOARD = (1..64)

  def self.square num

    raise ArgumentError unless BOARD.cover? num

    2 ** (num - 1)

  end

  def self.total
    BOARD.sum { |n| square n }
  end

end





# class Grains
#
#   def self.square num
#
#     if num < 1 || num > 64
#       raise ArgumentError
#     end
#
#     2 ** (num - 1)
#
#   end
#
#   def self.total
#     (1..64).to_a
#       .map { |n| square n}
#       .sum
#   end
#
# end
