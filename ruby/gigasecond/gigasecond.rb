require 'pry'


class Gigasecond
  class << self



    def from t1
      t1 + 1000000000
    end

    def objet
      {
        :one => "two",
        :three => "four",
        :five => "six"
      }
    end

  end
end

# binding.pry












































# class Gigasecond
#   def self.from time
#     time + 1000000000
#   end
# end
#
# module BookKeeping
#   VERSION = 6 # Where the version number matches the one in the test.
# end
