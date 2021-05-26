export const primeFactors = (number) => {
  const results = [];
  let divisor = 2;

  while ( number > 1 ) {
    if (number % divisor == 0) {
      results.push(divisor);
      number = number / divisor;
    } else {
      divisor ++;
    }
  }

  return(results)
}
