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
    if (this.key.length < text.length) {
      this.key = stretchKey(text, this.key)
    }

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
    if (this.key.length < text.length) {
      this.key = stretchKey(text, this.key)
    }

    for (let index = 0; index < letters.length; index++) {
      let letter = letters[index]
      let currentPosition = ALPHABET.indexOf(letter)

      let distance = calculateDistance(this.key[index])
      let codedIndex = (currentPosition - distance + 26) % 26

      transformed.push(ALPHABET[codedIndex])
    }

    return transformed.join('');
  }
}

const calculateDistance = (letter) => {
  const indexOne = 0;
  // const indexOne = ALPHABET.indexOf('a');
  const indexTwo = ALPHABET.indexOf(letter);

  return(indexTwo - indexOne)
}

const stretchKey = (text, key) => {
  while (text.length > key.length) {
    key += key;
  }
  return(key);
}