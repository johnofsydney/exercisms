export const hey = (statement) => {
  let answer = ''

  switch(statementType(statement.trim())) {
    case 'question':
      answer = 'Sure.'
      break
    case 'shouting':
      answer = 'Whoa, chill out!'
      break
    case 'forceful question':
      answer = "Calm down, I know what I'm doing!"
      break
    case 'silence':
      answer = 'Fine. Be that way!'
      break
    default:
      answer = 'Whatever.'
  }

  return answer;
}


const statementType = (statement) => {
  if (isAQuestion(statement) && isShouting(statement)) {
    return 'forceful question'
  };

  if (isAQuestion(statement)) {
    return 'question'
  };

  if (isShouting(statement)) {
    return 'shouting'
  };

  if (isEmpty(statement)) {
    return 'silence'
  };
}

const isAQuestion = (statement) => {
  return (statement.slice(-1) == '?')
}

const isShouting = (statement) => {
  return ((statement.toUpperCase() === statement) && containsSomeLetters(statement));
}

const containsSomeLetters = (statement) => {
    return (/[a-z]/i.test(statement));
};

const isEmpty = (statement) => {
    return (statement.replace(/\s/g,'') == '');
};

