class Bob
  def self.hey remark
    remark = remark.strip
    
    if remark.chars.last == "?" && remark.upcase == remark && remark.upcase.scan(/[A-Z]/).length != 0
      "Calm down, I know what I'm doing!"
    elsif remark.chars.last == "?"
      "Sure."
    elsif remark.upcase == remark && remark.upcase.scan(/[A-Z]/).length != 0
      "Whoa, chill out!"
    elsif remark.length == remark.scan(/\s/).length
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
