require 'pry'
# Encode or decode a string
class RunLengthEncoding
  def self.encode(input)
    return '' if input == ''

    input
      .chars
      .chunk { |letter| letter }
      .map do |letter, arr|
        arr.length > 1 ? arr.length.to_s + letter : letter
      end
      .join('')
  end

  def self.single_decode(code)
    output = ''
    letter = code.chars.pop
    number = (code.chars - [letter]).join('').to_i
    number.times { output << letter }
    output
  end

  def self.decode(input)
    return '' if input == ''

    input
      .scan(/\d*\D/)
      .map do |code|
        code.length == 1 ? code : single_decode(code)
      end
      .join('')
  end
end
