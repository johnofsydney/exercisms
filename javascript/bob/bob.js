let Bob = function () {

  this.hey = function(input) {


    if (input === input.toUpperCase() && input !== input.toLowerCase()) {
      return "Whoa, chill out!"
    }

    if (input[ input.length -1 ] === "?") {
      return "Sure."
    }

    return "Whatever."


  }

}

module.exports = Bob;
