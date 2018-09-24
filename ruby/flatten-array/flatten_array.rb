require 'pry'

class FlattenArray


  def self.flatten arr, fa = []
    # fa = []
    while arr.length > 0 do
      element = arr.shift

      if element.is_a? Array
        FlattenArray.flatten element, fa
      else
         fa.push element unless element == nil
      end # end of if 

    end #end of while


    return fa
  end # end of self.flatten
end # end of class

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

# binding.pry
