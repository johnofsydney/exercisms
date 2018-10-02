class Series
  def initialize string
    @string = string
  end

  def slices num
    output = []
    last = @string.length - num
    
    if last < 0
      raise ArgumentError
    end

    @string.chars.each_with_index do |letter, i|
      output.push @string.slice(i, num) unless i > last
    end
    output
  end
end
