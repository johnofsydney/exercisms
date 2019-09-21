require 'pry'
# a class for transposing
class Transpose

  def self.transpose input
    rows = make_rows input

    a = rows.transpose.reduce("") do |acc, ele|
      acc + ele.join + "\n"
    end
    .chomp

    # binding.pry

    a
  end

  def self.make_rows input
    a = input.lines.map{ |e| e.chomp.split("") }
    # binding.pry
    a
  end
end
