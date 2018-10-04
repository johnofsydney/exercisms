class Array

  def accumulate
    output = []
    each do |element|
      a = yield element
      output << a
    end

    output
  end
end


# a = [1,2,3,4,5]
# p a.accumulate { |e| e * e }

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
