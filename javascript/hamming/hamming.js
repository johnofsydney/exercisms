export const compute = (strandOne, strandTwo) => {

  if (strandOne.length != strandTwo.length ) {
    if (strandOne.length < 1 ) {
      throw new Error('left strand must not be empty')
    }
    if (strandTwo.length < 1 ) {
      throw new Error('right strand must not be empty')
    }

    throw new Error('left and right strands must be of equal length')
  }

  return [...strandOne].reduce( (sum, letterOne, index) => {
    let diff = (letterOne == strandTwo[index]) ? 0 : 1
    return sum + diff;
  }, 0)
};
