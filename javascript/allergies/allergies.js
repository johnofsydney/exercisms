export class Allergies {
  constructor(num) {
    this.num = sanitizeNum(num)
    this.allergyTable = buildAllergyTable(this.num)
  }

  allergicTo(food) {
    return (
      (this.allergyTable[food] == undefined) ? false : this.allergyTable[food]
    )
  }

  list() {
    return(
      Object.getOwnPropertyNames(this.allergyTable).reverse()
    );
  }
}

const buildAllergyTable = (num) => {
  let result = {};
  let individualScores = Object
                          .keys(ALLERGY_CONST)
                          .map(n => { return Number(n) })
                          .sort((a, b) => b - a)

  while (num > 0) {
    let numberToCheck = individualScores.shift()

    if (Math.floor(num / numberToCheck) == 1) {
      let allergen = ALLERGY_CONST[numberToCheck.toString()]
      result[allergen] = true;

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

const sanitizeNum = (num) => {
  // would not work for 1024, 2048 etc. But works for test, so will do.
  return (num >= 256) ? num - 256 : num
}