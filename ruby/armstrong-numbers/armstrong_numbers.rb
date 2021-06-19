class ArmstrongNumbers
  def self.include?(number)
    size = number.size

    number == number.digits.map{ |d| d ** size}.sum
  end
end

class Integer
  def size
    self.to_s.size
  end

  def digits
    self.to_s.chars.map{ |d| d.to_i }
  end
end