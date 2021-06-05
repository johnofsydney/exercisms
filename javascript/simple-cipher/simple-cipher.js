const ALPHABET = "abcdefghijklmnopqrstuvwxyz".split('')
export class Cipher {
  constructor(key) {
    if (/\A[^a-z]*\z/i.test(key)) {
      throw(Error('bad key'))
    }

    this.key = key || 'aaaaaaaaaa'
  }

  encode(text) {
    if (this.key.length < text.length) {
      this.key = stretchKey(text, this.key)
    }

    return [...text].reduce((result, letter, index) => {
      let newLetter = calculateLetter(letter, index, this.key, true);
      return result + newLetter
    }, '')
  }

  decode(text) {
    if (this.key.length < text.length) {
      this.key = stretchKey(text, this.key)
    }

    return [...text].reduce((result, letter, index) => {
      let newLetter = calculateLetter(letter, index, this.key, false);
      return result + newLetter
    }, '')
  }
}

const calculateDistance = (keyLetter) => {
  return (ALPHABET.indexOf(keyLetter));
}

const stretchKey = (text, key) => {
  while (text.length > key.length) {
    key += key;
  }
  return(key);
}

const calculateLetter =(letter, index, key, forward) => {
  // given a letter in a string, and it's position in that string
  // calculate a new letter by shifting that letter
  // forward inthe alphabet for encode and backwards for decode
  // the distance to shift is determined based on the letter of the key
  // at the position of the original letter in the original string
  let currentPosition = ALPHABET.indexOf(letter)

  let distance = calculateDistance(key[index])
  let codedIndex = forward ? (currentPosition + distance) % 26 : (currentPosition - distance + 26) % 26

  return ALPHABET[codedIndex]
}