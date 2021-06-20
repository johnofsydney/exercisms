require 'pry'
# magic comment
class Transpose
  def self.transpose(input)
    return '' if input.length.zero?

    rows = input.split("\n")
    max_length = rows.map(&:size).max


    rows
    .map{ |r| r.ljust(max_length, ' ').chars }
    .transpose
    .map{ |a| a.join('').rstrip }
    .join("\n")
  end
end

p 123