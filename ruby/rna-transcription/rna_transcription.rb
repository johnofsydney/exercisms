class Complement
  def self.of_dna input

    arr = input.split('')
    r_arr = arr.map { |e|
      case e
      when "C"
        "G"
      when "G"
        "C"
      when "T"
        "A"
      when "A"
        "U"
      else
        "X"
      end

    }
    output = r_arr.join('')

    if output.include? "X"
      output = ''
    end

    output

  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
