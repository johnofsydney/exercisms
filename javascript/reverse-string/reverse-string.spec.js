var reverseString = require('./reverse-string');

describe('ReverseString', function () {
  it('empty string', function () {
    var expected = '';
    var actual = reverseString('');
    expect(actual).toEqual(expected);
  });

  it('a word', function () {
    var expected = 'tobor';
    var actual = reverseString('robot');
    expect(actual).toEqual(expected);
  });

  it('a capitalized word', function () {
    var expected = 'nemaR';
    var actual = reverseString('Ramen');
    expect(actual).toEqual(expected);
  });

  it('a sentence with punctuation', function () {
    var expected = '!yrgnuh ma I';
    var actual = reverseString('I am hungry!');
    expect(actual).toEqual(expected);
  });

  it('a palindrome', function () {
    var expected = 'racecar';
    var actual = reverseString('racecar');
    expect(actual).toEqual(expected);
  });
});


I'd like to go to The Peak again. I enjoyed the bus ride
There are several markets, we could easily squeeze in visits in between other activities. Flower Market, Dried Seafood Market and Cat Road Antique market sound interesting. There's clothes and electronics too.
I'd like to see some colonial era stuff such as the govermanet house
I'd like to do some walks away from the city itself. apparently there's a walk fronm the Sha Tin MTR station which has wild monkeys
We should see some chinese art. I think there's plenty of options. Hong Kong Museum of Art looks easy to get to
We should eat the best dumplings and the best duck in hnog kong.
