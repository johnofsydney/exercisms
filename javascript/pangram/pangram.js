// var Pangram = function (input) {
//     this.text = input
// };

// Pangram.prototype.isPangram = function () {
//   if (this.text === '') {
//     return false
//   }


//   alphabetString = "abcdefghijklmnopqrstuvwxyz"
//   alphabetArray = alphabetString.split('')

//   // x = true

//   for (var i = 0; i < alphabetArray.length; i++) {
//     var a = alphabetArray[i]
//     if (this.text.toLowerCase().indexOf(a) < 0) {
//       // x = false
//       return false
//     }
//   }


//   return true

// };

// module.exports = Pangram;

// test suit is looking to import
// import { isPangram } from './pangram';
//  which looks like
// isPangram is the function and './pangram' is the file

export const isPangram = (sentence) => {
  sentence = sentence.toUpperCase()
  if (sentence.length == 0) {return false;}

  const ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

  return (sentence == ALPHABET)
}