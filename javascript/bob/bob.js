let Bob = function () {

  this.hey = function(input) {

    input = input.trim()

    if (input === input.toUpperCase() && input !== input.toLowerCase()) {
      return "Whoa, chill out!"
    }

    if (input[ input.length -1 ] === "?") {
      return "Sure."
    }

    if ( input.length === 0 ) {
      return "Fine. Be that way!"
    }

    return "Whatever."
  }

}

module.exports = Bob;
