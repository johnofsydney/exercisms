require 'pry'

class PhoneNumber
  def self.clean input
    nums = input.scan(/\d/).join("")
    invalid_chars = input.scan(/[a-z@:!]/).join("")
    invalid = false


    if nums.length < 10
      invalid = true
    end
    if nums.length ==  10 && (nums.chars.first == "0" || nums.chars.first == "1")
      invalid = true
    end
    if nums.length ==  10 && (nums.chars[3] == "0" || nums.chars[3] == "1")
      invalid = true
    end
    if nums.length ==  11 && (nums.chars[1] == "0" || nums.chars[1] == "1")
      invalid = true
    end
    if nums.length ==  11 && (nums.chars[4] == "0" || nums.chars[4] == "1")
      invalid = true
    end
    if nums.length > 11
      invalid = true
    end
    if nums.length == 11 && nums.chars.first != "1"
      invalid = true
    end
    if invalid_chars.length > 0
      invalid = true
    end

    if invalid
      nil
    elsif nums.length == 11
      nums.slice(1, 10)
    else
      nums
    end
  end
end
