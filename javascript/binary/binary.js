function Binary(numString) {

  this.toDecimal = function () {
    let result = 0;
    let arrBinRev = numString.split('').reverse();

    for (var i = 0; i < arrBinRev.length; i++) {

      number = +arrBinRev[i];
      if (isNaN(number) || (number > 1)) {
        return 0;
      }
      result = result + number * Math.pow(2, i);
    }
    return result;
  };
}

module.exports = Binary;
