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

  def self.decode(input)
    return '' if input == ''

    input
      .scan(/(\d*)(\D)/)
      .map do |number, letter|
        number.to_i > 1 ? letter * number.to_i : letter
      end
      .join('')
  end
end
