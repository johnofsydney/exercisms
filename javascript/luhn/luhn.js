export const valid = (string) => {
  string = removeSpaces(string)
  if (string.length < 2) { return false }
  if (invalidCharacters(string)) { return false }

  const number = getTheNumber(string)

  return( number % 10 == 0)
};

const removeSpaces = (string) => {
  return (string.replace(/\s/g, ''));
}

const invalidCharacters = (string) => {
  return (string.match(/\D/) ? true : false);
}

const doTheMath = (num) => {
  num = num * 2;
  if ( num  > 9) { num = num - 9 };
  return(num)
}

const getTheNumber = (string) => {
  return(
    string
      .split('')
      .reverse()
      .map((num) => { return +num })
      .map((num, index) => {
        if (index % 2 == 0) {
          return num
        } else {
          return (doTheMath(num))
        }
      })
      .reduce((sum, num) => { return sum + num }, 0)
  );
}