export const square = (number) => {
  if (number < 1 || number > 64 ) {
    throw new Error('square must be between 1 and 64')
  }
  return (BigInt(2 ** (number - 1)))
};

export const total = () => {
  return( BigInt(2** 64) - BigInt(1)) // trick!
};
