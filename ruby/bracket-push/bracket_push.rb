# description of Brackets class
class Brackets
  def self.paired?(text)
    re = /[{}\[\]()]/m
    brackets = text.scan(re).join
    return true if there_are_no_brackets brackets
    return false if odd_number_of_brackets brackets
    return false if no_brackets_can_be_removed brackets

    # recursion...
    paired? remove_consecutive_matching_brackets(brackets)
  end

  class << self
    def odd_number_of_brackets(brackets)
      brackets.length.odd?
    end

    def there_are_no_brackets(brackets)
      brackets.length.zero?
    end

    def no_brackets_can_be_removed(brackets)
      # look for consecutive pairs of (), {} or []
      return false if brackets =~ /{}/
      return false if brackets =~ /\(\)/
      return false if brackets =~ /\[\]/

      # there are no consecutive matching brackets:
      true
    end

    def remove_consecutive_matching_brackets(brackets)
      brackets
        .gsub('{}', '')
        .gsub('()', '')
        .gsub('[]', '')
    end
  end
end
