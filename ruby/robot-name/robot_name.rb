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
    all_names = []
    ('A'..'Z').to_a.each do |a|
      ('A'..'Z').to_a.each do |b|
        ('0'..'9').to_a.each do |c|
          ('0'..'9').to_a.each do |d|
            ('0'..'9').to_a.each do |e|
              all_names << (a + b + c + d + e)
            end
          end
        end
      end
    end
    all_names.shuffle
  end

  def reset
    @name = @@all_names.pop
  end

  def self.forget
    @@all_names = nil
  end
end
