export class Clock {
  constructor(hours = 0, minutes = 0) {
    this.minutes = calculateMinutes(minutes)
    this.hours = calculateHours(hours, minutes)
  }

  toString() {
    const hours = this.hours.toString().padStart(2, '0')
    const minutes = this.minutes.toString().padStart(2, '0')

    return (`${hours}:${minutes}`);
  }

  plus(minutes) {
    minutes = this.minutes + minutes

    return(new Clock(this.hours, minutes))
  }

  minus(minutes) {
    minutes = this.minutes - minutes

    return (new Clock(this.hours, minutes))
  }

  equals(clock) {
    return (this.toString() == clock.toString())
  }
}

const calculateMinutes = (minutes) => {
  // ruby mod does the rolling over for you
  // JS seems more logical and will give a negative answer for a negative argument
  // Hence this wee rolling routine
  while (minutes < 0) {
    minutes += 60
  }

  return (minutes % 60)
}

const calculateHours = (hours, minutes) => {
  // JS version of integer division
  hours += Math.floor(minutes / 60)


  while (hours < 0) {
    hours += 24
  }

  // -1 % 24 = -1
  return (hours % 24)
}