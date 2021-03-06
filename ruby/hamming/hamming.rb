require "pry"

class Hamming

  def self.compute text1, text2

    if text1.length != text2.length
      raise ArgumentError
    end

    text1.chars.each_with_index.count do |letter, index|
      letter != text2.chars[index]
    end

  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end




# class Hamming
#   class << self
#     # def initialize
#     # end
#
#     def compute  text1, text2
#       distance = 0
#       # binding.pry
#       if text1.length == text2.length
#         one_array = text1.split ""
#         two_array = text2.split ""
#
#         one_array.each_with_index do |letter, index|
#           if letter != two_array[index]
#             distance = distance + 1
#           end
#         end
#       else
#         raise ArgumentError
#       end
#       distance
#     end
#
#
#   end
# end

# a = Hamming.new
# p Hamming.compute "sddtext",   "smetffft"


# binding.pry



#
# class Station
#   def initialize(name, interchanges)
#     @name = name
#     @interchanges = interchanges
#   end
#
#   def name
#     @name
#   end
#
#   def check_interchangeable(line)
#     @interchanges.include?(line)
#   end
#
# end








































# class Hamming
#
#   def self.compute text1, text2
#     differences = 0
#
#     if ( text1.length != text2.length )
#       raise(ArgumentError).new('Error: strings are unequal length')
#     end
#
#     text1_arr = text1.chars
#     text2_arr = text2.chars
#
#     text1_arr.each_with_index do | letter_in_arr1, index|
#       if letter_in_arr1 != text2_arr[index]
#         differences = differences + 1
#       end
#     end
#
#
#     differences = text1_arr.zip(text2_arr).count { |a, b| a != b }
#
#     differences
#   end
# end










































# class Hamming
#
#   # def Hamming.compute text1, text2
#   def self.compute text1, text2
#     # can Joel please explain "self"
#     result = 0
#
#     text1_arr = text1.chars
#     text2_arr = text2.chars
#
#     # text1_arr.each_with_index do |letter_in_arr1, index |
#     #   if letter_in_arr1 != text2_arr[index]
#     #     result = result + 1
#     #   end
#     # end
#
#     result = text1_arr.zip(text2_arr).count { |a, b| a != b }
#
#
#
#
#     result
#   end
#
# end











# class Hamming
#
#   def self.compute string1, string2
#     distance = 0
#
#     if ( string1.length != string2.length )
#       raise(ArgumentError).new('text if you like')
#     end
#
#     if ( string1 == string2 )
#       return distance
#     else
#       str1_arr = string1.split('')
#       str2_arr = string2.split('')
#
#       str1_arr.each_with_index do |letter, index|
#         if (letter != str2_arr[index])
#           distance = distance + 1
#         end
#       end
#     end
#
#     distance
#   end
# end
#
# module BookKeeping
#   VERSION = 3 # Where the version number matches the one in the test.
# end
