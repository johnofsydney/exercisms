export const classify = (num) => {
  if (num < 1) {
    throw new Error('Classification is only possible for natural numbers.')
  }

  let result = doTheMath(num);

  if (result > 0) {
    return ('abundant')
  } else if(result < 0) {
    return ('deficient')
  } else {
    return ('perfect')
  }
};

const getFactors = (num) => {
  if (num == 1) { return [] };
  if (num == 2) { return [1] };

  const root = Math.floor( Math.pow(num, 0.5), 0 );
  let factors = [1];

  for (let index = 2; index <= root; index++) {
    if (num % index == 0) {
      factors.push(index);
      factors.push(num/index);
    }
  }

  // return(factors)
  return ([...new Set(factors)]) // remove duplicates
}

const doTheMath = (num) => {
  const sum = getFactors(num).reduce( (sum, n) => {return sum + n},0)
  return(sum - num);
}