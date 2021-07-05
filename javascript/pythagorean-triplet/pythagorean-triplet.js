//
// This is only a SKELETON file for the 'Pythagorean Triplet' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export function triplets({ minFactor, maxFactor, sum }) {
  // let minFactor = 1
  // let maxFactor = sum - 2

  let range = []
  for (let i = minFactor; i <= maxFactor; i++) {
    range.push(i)
  }
  console.log(range)

  // generate rtipleets from range
  let combinations = []
  for (let i = 0; i < range.length -2; i++) {
    for (let j = i + 1; j < range.length -1; j++) {
      for (let k = j + 1; k < range.length; k++) {
        combinations.push( [range[i], range[j], range[k]])
      }
    }
  }
  console.log(combinations)
}

class Triplet {
  constructor(a, b, c) {
    this.numbers = [a, b, c]
  }

  sum = () => {
    return this
            .numbers
            .reduce( (acc, element) => {return(acc + element)}, 0)
  }

  pythagorean = () => {
    return (
      this.numbers[0]**2 + this.numbers[1]**2 == this.numbers[2]**2
      )
  }

  get toArray() {
    return this.numbers
  }
}
