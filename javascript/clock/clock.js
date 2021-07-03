export class Clock {
  constructor(hours = 0, minutes = 0) {
    const d = new Date()
    d.setHours(hours)
    d.setMinutes(minutes)

    this.hours = d.getHours(hours);
    this.minutes = d.getMinutes(minutes);
  }

  toString() {
    const hours = this.hours.toString().padStart(2, '0')
    const minutes = this.minutes.toString().padStart(2, '0')

    return (`${hours}:${minutes}`);
  }

  plus(minutes) {
    return(new Clock(this.hours, this.minutes + minutes))
  }

  // alternative way to define public instance method
  // also implicit one line return, no braces
  minus = (minutes) => this.plus(-minutes)

  equals = (clock) => this.toString() == clock.toString()
}
