class Anagram

  def initialize string
    @string = string
  end

  def match word_list

    word_list.select do |word|
      @string.upcase.chars.sort == word.upcase.chars.sort && @string.upcase!= word.upcase
    end

  end
end
