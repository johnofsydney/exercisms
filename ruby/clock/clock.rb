class Clock
  attr_reader :hours, :minutes

  def initialize(hour: 0, minute: 0)
    @minutes = calculate_minutes(minute)
    @hours = calculate_hours(hour, minute)
  end

  def to_s
    "%02d:%02d" % [hours, minutes]
  end

  def + (clock)
    hour = hours + clock.hours
    minute = minutes + clock.minutes

    Clock.new(hour: hour, minute: minute)
  end

  def - (clock)
    hour = hours - clock.hours
    minute = minutes - clock.minutes

    Clock.new(hour: hour, minute: minute)
  end

  def == (clock)
    hours == clock.hours && minutes == clock.minutes
  end

  private

  def calculate_minutes(minute)
    # minutes roll over to zero every 60 minutes
    minute % 60
  end

  def calculate_hours(hour, minute)
    # every 60 minutes, add an hour
    hour += minute / 60

    # hours roll over to zero every 24 hours
    # ruby mod handles the rolling over
    # -1 % 24 = 23
    hour % 24
  end
end