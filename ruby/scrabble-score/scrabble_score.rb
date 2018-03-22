require 'pry'




class Scrabble

  LETTER_VALUES = {
      "a" => 1,
      "b" => 3,
      "c" => 3,
      "d" => 2,
      "e" => 1,
      "f" => 4,
      "g" => 2,
      "i" => 1,
      "j" => 8,
      "k" => 5,
      "l" => 1,
      "m" => 3,
      "n" => 1,
      "o" => 1,
      "p" => 3,
      "q" => 10,
      "r" => 1,
      "s" => 1,
      "t" => 1,
      "u" => 1,
      "v" => 4,
      "w" => 4,
      "x" => 8,
      "y" => 4,
      "z" => 10,
      "h" => 4,
    }

    VALUED_LETTERS = {
      1 => ["A", "E", "I", "O", 'U', "L", "N", "R", "S", "T"],
      2 => ["D", "G"],
      3 => ["B", "C", "M", "P" ],
      4 => ["F", "H", "V", "W", "Y" ],
      5 => ["K"],
      8 => ["J", "X" ],
      10 => ['Q', "Z" ]
    }


  def initialize word
    if word
      @word = word
    end
    # binding.pry
  end

  def score
    if @word
      result = 0
    else
      return result = 0
    end

    @word.downcase.split('').each do |letter|
      # result += LETTER_VALUES[letter]

      VALUED_LETTERS.each. do | key, value |
          # first_position = line.find_index(start_station)
          if value.include? letter { result += key }
      end

    end

  result
  end

  # Convenient scoring:
  def self.score(word)
    Scrabble.new(word).score
  end


end
