class Matrix

  attr_reader :rows, :columns

  def initialize input
    @rows = input.each_line.map do
      |r| r.split.map(&:to_i)
    end
    @columns = rows.transpose
  end

end










# class Matrix
#
#   def initialize input
#     @input = input
#   end
#
#   def rows
#     @input.scan(/.+/).map do
#       |r| r.split(" ").map { |n| n.to_i }
#     end
#   end
#
#   def columns
#     rows.transpose
#   end
#
# end
