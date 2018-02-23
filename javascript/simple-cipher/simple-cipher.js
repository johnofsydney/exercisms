function Cipher(key) {
  ALPHABET = "abcdefghijklmnopqrstuvwxyz"

  if ( key === '' ) {
    throw(Error('Bad key'))
  }

  this.key = key || "aaaaaaaaaa"

}

  Cipher.prototype.encode = function (text) {
    textArray = text.split('')
    result = ""

    textArray.forEach( function (char, i) {
      indexOld = ALPHABET.indexOf(char)
      delta = ALPHABET.indexOf(this.key[0])
      indexNew = indexOld + delta
      result += ALPHABET[indexNew]
    })

    return result
  }

  this.decode = function (text) {
    return this.key[0]
  }




module.exports = Cipher;
