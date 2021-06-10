export const countWords = (sentence) => {

  return (
    sentence
      .replace(/\s'|'\s|'$|\A'/g, ' ')  // delete surrounding apostrophes
      .replace(/[:.!&$@^%]/g, '')       // delete punctuation
      .toLowerCase()
      .split(/[\s,]+/)                  // split on spaces _and_ new lines
      .filter((word) => {
        if (word.replace(/s/g, '').length > 0) {
          return (word)
        }
      })                                // remove any words containing just spaces
      .reduce( (result, word) => {
        result[word] ? result[word]++ : result[word] = 1
        return(result)
      }, {})                            // crunch it down to a single object
  );
};
