require 'pry'
# Encode or decode a string
class RunLengthEncoding
  def self.encode(input)
    return '' if input == ''

    # input
    #   .chars
    #   .chunk { |letter| letter }
    #   .map do |letter, arr|
    #     arr.length > 1 ? arr.length.to_s + letter : letter
    #   end
    #   .join
    input.gsub(/(.)(\1*)/) { $2 == "" ? $1 : ($2.length + 1).to_s + $1 }
  end

  def self.decode(input)
    return '' if input == ''

    # input
    #   .scan(/(\d*)(.)/)
    #   .map do |number, letter|
    #     number.to_i > 1 ? letter * number.to_i : letter
    #   end
    #   .join
    input.gsub(/(\d*)(.)/){ $2 * ( $1 == "" ? 1 : $1.to_i) }
  end
end
