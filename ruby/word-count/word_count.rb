require 'pry'

class Phrase
  def initialize input
    @words = input.downcase.scan(/\b[\w']+\b/)
    # \b is for boundary, the ' does count as a boundary
    # so \b\w+\b will get all chars and digits as words (same as \w+)
    # but we need to add the apostrophe into the search to capture those words \b[\w']+\b
    # the \b ensures we're looking for matches within boundaries
    @counts = {}
  end

  def word_count
    @words.each do |word|

      if @counts.keys.include? word
        @counts[word] = @counts[word] + 1
      else
        @counts[word] = 1
      end

    end

    @counts
  end
end

# binding.pry
