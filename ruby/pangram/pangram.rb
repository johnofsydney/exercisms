class Pangram
  class << self

    def pangram? phrase
      phrase = phrase.upcase.split ""
      alphabet = ("A".."Z").to_a

      if (phrase & alphabet).length == 26
        return true
      end
      false

    end
  end
end































# class Pangram
#
#   # initialize phrase
#   # end
#
#
#   def self.pangram? string
#
#     if string == ''
#       return false
#     end
#
#     alpha_array = ("a".."z").to_a
#     string_array = string.downcase.split('')
#
#     # alpha_array.each do |letter|
#     #   if (string_array.index(letter) == nil )
#     #     return false
#     #   end
#     # end
#
#     alpha_array.all? { |letter| string_array.include?(letter) }
#
#
#   end
#
# end
