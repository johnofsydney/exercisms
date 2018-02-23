var reverseString = function (text) {
  if (text === '') {
    return ''
  }


  return text.split('').reverse().join('')
};



module.exports = reverseString;
