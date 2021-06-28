require 'pry'
# The class under test, which can transpose a mis-shapen block of text
class Transpose
  def self.transpose(input)
    return '' if input.length.zero?

    rows = input.split("\n")
    max_length = rows.map(&:size).max


    rows
      .map{ |r| r.ljust(max_length, ' ').chars }
      .transpose_john # my new method from below
      .map{ |a| a.join('').rstrip }
      .join("\n")
  end
end

# This exercise was a real punish and I only solved it after viewing
# the community solutions and seeing the `transpose` method on Array
#
# So I am recreating that method here for practice

# Monkey patching Array class
class Array
  def transpose_john
    # confirm the shape of the nested array.
    validate

    # let's refer to each row as a word for now.
    # We'll need as many new rows as there are letters in each word
    word_length = first.length
    result = []
    word_length.times { result.push([]) }

    each do |line|
      line.each_with_index do |char, i|
        result[i].push(char)
      end
    end

    result
  end

  def validate
    # confirm that each 'word' is the same length
    length = first.length
    lengths = map(&:length)
    raise RuntimeError('mismatch') unless lengths.all?(length)

    # could improve this by checking that the array contains only arrays
    # and that each of these is only one level deep.
  end
end
