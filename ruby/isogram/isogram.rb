class Isogram

  def self.isogram? input
    input.upcase.scan(/\w/).length == input.upcase.scan(/\w/).uniq.length
  end

end
