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
    if (/\A[^a-z]*\z/i.test(key)) {
      throw(Error('bad key'))
    }

    this.key = key || 'aaaaaaaaaa'
  }

  encode(text) {
    const letters = [...text]
    let transformed = []
    this.key = checkLengthOfKey(text, this.key)

    for (let index = 0; index < letters.length; index++) {
      let letter = letters[index]
      let currentPosition = ALPHABET.indexOf(letter)

      let distance = calculateDistance(this.key[index])
      let codedIndex = (currentPosition + distance) % 26

      transformed.push(ALPHABET[codedIndex])
    }

    return transformed.join('');
  }

  decode(text) {
    const letters = [...text]
    let transformed = []
    this.key = checkLengthOfKey(text, this.key)

    for (let index = 0; index < letters.length; index++) {
      let letter = letters[index]
      let currentPosition = ALPHABET.indexOf(letter)

      let distance = calculateDistance(this.key[index])
      let codedIndex = (currentPosition - distance + 26) % 26

      transformed.push(ALPHABET[codedIndex])
    }

    return transformed.join('');
  }

  // rotate
}

const calculateDistance = (letter) => {
  const indexOne = ALPHABET.indexOf('a');
  const indexTwo = ALPHABET.indexOf(letter);

  return(indexTwo - indexOne)
}

const checkLengthOfKey = (text, key) => {

  while (text.length > key.length) {
    key = key + key
  }

  return(key)


}