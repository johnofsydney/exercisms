require 'pry'
# Definitiion of class SpaceAge for Exercism
class SpaceAge
  EARTH_YEAR_IN_SECONDS = 31_557_600
  PLANETS = {
    Earth: 1,
    Mercury: 0.2408467,
    Venus: 0.61519726,
    Mars: 1.8808158,
    Jupiter: 11.862615,
    Saturn: 29.447498,
    Uranus: 84.016846,
    Neptune: 164.79132
  }.freeze

  def initialize(seconds)
    @seconds = seconds
  end

  PLANETS.each do |planet, _year|
    define_method("on_#{planet.downcase}") do
      @seconds.to_f / EARTH_YEAR_IN_SECONDS / PLANETS[planet]
    end
  end

  def method_missing(name, *args, &block)
    super
    raise "'#{name}' is not a method of the class #{self.class}"
  end

  def respond_to_missing?(*)
    p 'not sure what to do here but'
    p "rubocop recommends a 'respond_to_missing?' method"
  end
end
