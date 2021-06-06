# magic comment
class Transpose
  def self.transpose(input)
    return '' if input.length.zero?

    arrarr = input.each_line.map{ |l| l.strip.chars }
    rows = arrarr.max_by(&:size).length


  end
end
