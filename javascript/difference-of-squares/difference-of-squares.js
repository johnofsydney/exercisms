export class Squares {
  constructor(num) {
    this.numberArray = makeArray(num)
  }

  get sumOfSquares() {
    return (
      this.numberArray
        .map((n) => {return(Math.pow(n,2))})
        .reduce((sum, n) => {return sum + n}, 0)
    );
  }

  get squareOfSum() {
    return (
      Math.pow(
        (this.numberArray.reduce((sum, n) => { return sum + n}, 0)), 2
      )
    );

  }

  get difference() {
    return(this.squareOfSum - this.sumOfSquares)
  }
}

// like a privste method
const makeArray = (num) => {
  let arr = [...Array(num + 1).keys()] // [0, 1, 2, ... num]
  arr.shift(); // remove first entry, zero.

  return(arr)
}