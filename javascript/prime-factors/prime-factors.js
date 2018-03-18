const primeFactors = {


  isPrime: function(num) {

    return true;

  },


  for: function(num) {

    if (num === 1) { return [] }

    results = [];
    for (var i = 2; i <= num; i++) {
      if (( num % i === 0 ) && ( this.isPrime(i) )  ) {
        results.push(i)
      }
    }

    return results;
  }
};

module.exports = primeFactors;


// def is_prime(num)
//   test_array = (2..Math.sqrt(num)).to_a
//   test_array.each do |x|
//     if num % x == 0
//       return false
//     # else
//     #   return true
//     end
//   end
//   return true
// end
//
// def factors(num)
//   facts = []
//   num_array = (2..Math.sqrt(num)).to_a.reverse
//   # print num_array
//   num_array.each do |x|
//     if num % x == 0 && is_prime(x)
//       return x
//     end
//   end
// end
