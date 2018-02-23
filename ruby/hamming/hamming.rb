
class Hamming

  def self.compute string1, string2
    distance = 0

    if ( string1.length != string2.length )
      raise(ArgumentError).new('text if you like')
    end

    if ( string1 == string2 )
      return distance
    else
      str1_arr = string1.split('')
      str2_arr = string2.split('')

      str1_arr.each_with_index do |letter, index|
        if (letter != str2_arr[index])
          distance = distance + 1
        end
      end
    end

    distance
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
