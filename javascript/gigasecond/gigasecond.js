function Gigasecond(date) {
	this.startDate = date;
}

Gigasecond.prototype.date = function() {

  startTime = this.startDate.getTime()
  endDate = new Date(startTime + 1000000000000)

	return endDate;
}

module.exports = Gigasecond;
