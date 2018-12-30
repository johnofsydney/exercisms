# description of class Robot
class Robot
  attr_accessor :name

  @@all_names = nil

  def initialize
    @@all_names = make_all_names unless @@all_names

    msg = 'All names have been exhausted. Try Robot.forget and then Robot.new'
    raise(msg) if @@all_names.count.zero?

    @name = @@all_names.pop
  end

  def make_all_names
    ('AA000'..'ZZ999').to_a.shuffle
  end

  def reset
    @name = @@all_names.pop
  end

  def self.forget
    @@all_names = nil
  end
end
