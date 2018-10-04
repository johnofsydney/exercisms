class Acronym

  def self.abbreviate phrase
    phrase
    .upcase
    .scan(/\w+/)
    .map { |word| word.chars.first }
    .join("")
  end
end



# class Acronym
#
#   def self.abbreviate phrase
#     words = phrase.upcase.scan(/\w+/)
#     output = words.map do |word|
#       word.chars.first
#     end
#     output.join("")
#   end
# end



# class Acronym
#
#   def self.abbreviate phrase
#     words = phrase.upcase.scan(/\w+/)
#     output = []
#     words.each do |word|
#       output.push word.chars.first
#     end
#     output.join("")
#   end
# end
