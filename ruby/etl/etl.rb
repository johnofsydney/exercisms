class ETL
  def self.transform obj
    output = {}

    obj.each_pair do |score, letters|

      letters.each do |letter|
        output[letter.downcase] = score
      end
    end

    output
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
