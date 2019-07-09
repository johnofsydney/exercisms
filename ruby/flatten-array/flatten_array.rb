require 'pry'

# Recursively flatten an array
class FlattenArray
  def self.flatten(arr, flatter_array = [])
    # fa = []
    # while arr.length > 0 do
    until arr.empty? do
      element = arr.shift

      if element.is_a? Array
        FlattenArray.flatten element, flatter_array
      else
        flatter_array.push element unless element.nil?
      end
      # end of if

    end
    # end of until

    flatter_array
  end
  # end of self.flatten
end
# end of class

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

# binding.pry
