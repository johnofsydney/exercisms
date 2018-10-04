
class CollatzConjecture

  def self.steps num, steps = 0

    if num < 1
      raise ArgumentError
    end

    if num == 1
      return steps
    end

    if num % 2 == 0
      CollatzConjecture.steps(num / 2, steps + 1)
    else
      CollatzConjecture.steps(num * 3 + 1, steps + 1)
    end

  end

end
# class CollatzConjecture
#
#   def self.steps num
#     steps = 0
#
#     if num < 1
#       raise ArgumentError
#     end
#
#     while num != 1 do
#       if num % 2 == 0
#         num = num / 2
#       else
#         num = num * 3 + 1
#       end
#       steps = steps + 1
#     end
#
#     steps
#   end
#
# end
