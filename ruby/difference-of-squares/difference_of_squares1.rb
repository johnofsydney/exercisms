class Squares

  def initialize num
    @num = num
  end

  def square_of_sum
    i = 0
    sum = 0
    while i < (@num + 1)
      sum += i
      i += 1
    end

    result = sum ** 2
  end

  def sum_of_squares
    i = 0
    sum = 0
    while i < (@num + 1)
      sum += (i ** 2)
      i += 1
    end

    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end



end

# Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.
#
# The square of the sum of the first ten natural numbers is
# (1 + 2 + ... + 10)² = 55² = 3025.
#
# The sum of the squares of the first ten natural numbers is
# 1² + 2² + ... + 10² = 385.
#
# Hence the difference between the square of the sum of the first
# ten natural numbers and the sum of the squares of the first ten
# natural numbers is 3025 - 385 = 2640.
