class ArmstrongNumbers
  def self.include?(number)
    size = number.size

    number == number.to_s.chars.map{ |d| d.to_i ** size}.sum
  end
end

class Integer
  def size
    self.to_s.size
  end
end