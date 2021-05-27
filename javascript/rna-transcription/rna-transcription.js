const STRANDMAP = {
  G: 'C',
  C: 'G',
  T: 'A',
  A: 'U'
}

export const toRna = (sequence) => {
  if (sequence.length < 1) { return('') };

  return (sequence.split('').map(transcribe).join(''));
}

const transcribe = (nucleotide) => {
  return(STRANDMAP[nucleotide]);
}