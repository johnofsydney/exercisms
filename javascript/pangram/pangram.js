// test suit is looking to import
// import { isPangram } from './pangram';
//  which looks like
// isPangram is the function and './pangram' is the file

export const isPangram = (sentence) => {
  if (sentence.length == 0) {return false;}

  const ALPHABET = 'abcdefghijklmnopqrstuvwxyz';

  // make an object with keys of all the letters
  const alphaObject = {}
  ALPHABET.split('').forEach(letter => {
    alphaObject[letter] = 0
  });

  // add 1 to the value of each letter present in sentence
  const cleanedSentence = sentence.toLowerCase().replace(/\W/g,'')
  cleanedSentence.split('').forEach(letter => {
    alphaObject[letter] ++
  });

  // are there any letters which have a value of 0?
  // return the inverse.
  return !Object.values(alphaObject).includes(0);
}
