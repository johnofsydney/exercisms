//
// This is only a SKELETON file for the 'Scrabble Score' exercise. It's been provided as a
// convenience to get you started writing code faster.
//
import { transform } from '../etl/etl';

export const score = (word) => {
  const scores = transform(OLD_SCORES);

  return word
          .toLowerCase()
          .split('')
          .reduce( (score, letter) => {
            return score + scores[letter]
          }, 0)
};

const OLD_SCORES = {
  1: ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
  2: ['D', 'G'],
  3: ['B', 'C', 'M' ,'P'],
  4: ['F', 'H', 'V', 'W', 'Y'],
  5: ['K'],
  8: ['J', 'X'],
  10: ['Q', 'Z']
}