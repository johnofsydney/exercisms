var DnaTranscriber = function () {

}


DnaTranscriber.prototype.toRna = function (input) {

  const swapper = function (letter) {
    switch (letter) {
      case "G":
        return "C";
      case "C":
        return "G";
      case "T":
        return "A";
      case "A":
        return "U";
      default:
        return "X";
    }
  };
  var arr = input.split('');
  var swappedArr = arr.map(swapper);
  var output = swappedArr.join('');

  if (output.indexOf("X") >= 0) {
    throw new Error('Invalid input');
  }

  return output;

};

module.exports = DnaTranscriber;
