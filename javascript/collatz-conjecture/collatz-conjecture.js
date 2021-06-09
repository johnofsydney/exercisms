export const steps = (num) => {
  if (num < 1) {
    throw new Error('Only positive numbers are allowed')
  }

  let steps = 0;

  while (num > 1) {
    if (num % 2 == 0) {
      // num is even
      num = num / 2;
    } else {
      // num is odd
      num = (num * 3) + 1;
    }

    steps ++
  }

  return(steps);
}