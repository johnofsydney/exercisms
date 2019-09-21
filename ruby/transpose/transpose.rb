require 'pry'
# comment
class Transpose

  def self.transpose(input)
    return '' if input.length.zero?

    input.lines.split('').reduce{ |a, p| a + "\n" + p }
  end
end