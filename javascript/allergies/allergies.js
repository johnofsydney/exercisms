export class Allergies {
  constructor(num) {
    this.num = num
    this.allergyTable = calculatePatientAllergies(this.num)
  }

  allergicTo(food) {
    return checker(food, this.allergyTable)
  }

  list() {
    return(
      this.allergyTable
    );
  }
}

const calculatePatientAllergies = (num) => {
  let result = {};
  let individualScores = Object
                          .keys(ALLERGY_CONST)
                          .map(n => { return Number(n) })
                          .sort((a, b) => b - a)

  while (num > 0) {
    let numberToCheck = individualScores.shift()

    if (Math.floor(num / numberToCheck) == 1) {
      let word = ALLERGY_CONST[numberToCheck.toString()]
      result[word] = true;

      num = num - numberToCheck
    }
  }

  return(result)
}

const ALLERGY_CONST = {
  1: 'eggs',
  2: 'peanuts',
  4: 'shellfish',
  8: 'strawberries',
  16: 'tomatoes',
  32: 'chocolate',
  64: 'pollen',
  128: 'cats',
}


const checker = (food, allergyTable) => {

  return (allergyTable[food] == undefined) ? false : allergyTable[food]
}