export class Clock {
  constructor(hours = 0, minutes = 0) {
    this.minutes = calculateMinutes(minutes)
    this.hours = calculateHours(hours, minutes)
  }

  toString() {
    return (`${this.hours}:${this.minutes}`);
  }

  calculateMinutes(minutes) {
    return(minutes % 60)
  }

  calculateHours(hours, minutes) {
    hours += (minutes - (minutes % 60)) / 60

    return(hours % 24)
  }
}