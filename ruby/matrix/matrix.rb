class Matrix

  def initialize input
    @input = input
  end

  def rows
    @input.scan(/.+/).map do
      |r| r.split(" ").map { |n| n.to_i }
    end
  end

  def columns
    rows.transpose
  end

end
