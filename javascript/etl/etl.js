export const transform = (old) => {
  let transformed = {};
  Object.entries(old).forEach( ([key, value]) => {
    let score = key;
    let letters = value;

    letters.forEach( (letter) => {
      transformed[letter.toLowerCase()] = Number(score);
    })
  });

  return transformed
};
