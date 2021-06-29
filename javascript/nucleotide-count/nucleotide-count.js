export class NucleotideCounts {
  static parse(text) {
    validate(text)
    return(doTheMath(text) )
  }
}

const doTheMath = (text) => {
  const scores = {
    A: 0,
    C: 0,
    G: 0,
    T: 0
  }

  text.split('').forEach(letter => {
    scores[letter] ++;
  });

  return(Object.values(scores).join(' '))
}

const validate = (text) => {
  if (text.match(/[^AGCT]/)) {
    throw new Error('Invalid nucleotide in strand')
  }
}