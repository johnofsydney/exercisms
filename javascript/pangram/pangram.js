
var Pangram = function (input) {
    this.text = input
};

Pangram.prototype.isPangram = function () {
  if (this.text === '') {
    return false
  }


  alphabetString = "abcdefghijklmnopqrstuvwxyz"
  alphabetArray = alphabetString.split('')

  // x = true

  for (var i = 0; i < alphabetArray.length; i++) {
    var a = alphabetArray[i]
    if (this.text.toLowerCase().indexOf(a) < 0) {
      // x = false
      return false
    }
  }


  return true

};

module.exports = Pangram;
