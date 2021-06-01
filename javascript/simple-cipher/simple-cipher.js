// function Cipher(key) {
//   ALPHABET = "abcdefghijklmnopqrstuvwxyz"

//   if ( key === '' ) {
//     throw(Error('Bad key'))
//   }

//   this.key = key || "aaaaaaaaaa"



//   this.encode = function (text) {
//     textArray = text.split('')
//     result = ""

//     textArray.forEach( function (char, i) {
//       indexOld = ALPHABET.indexOf(char)
//       delta = 0
//       indexNew = indexOld + delta
//       result += ALPHABET[indexNew]
//     })

//     return result
//   }

//   this.decode = function (text) {
//     return this.key
//   }


// }

// module.exports = Cipher;

const ALPHABET = "abcdefghijklmnopqrstuvwxyz".split('')
export class Cipher {
  constructor(key) {
    this.key = key || 'aaaaaaaaaa'
  }

  encode(text) {
    return ('big bad bobby');
  }

  decode(text) {
    return ('fresh fred frying');
  }

  rotate
}

