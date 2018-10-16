const Triangle = function (s1, s2, s3) {



  return {
    isBadTriangle: function( arr ) {
      if (arr[0] <= 0) {return true}
      if (arr[2] > (arr[0] + arr[1]) ||
          arr[1] > (arr[0] + arr[2]) ||
          arr[2] > (arr[1] + arr[2]) ) { return true }
    },

    kind: function() {

      let sorted = [s1,s2,s3].sort()

      if (this.isBadTriangle(sorted)) {
        throw new Error('Invalid input.')
      }


      if (sorted[0] == sorted[2]) {
        return "equilateral"
      } else if (sorted[1] == sorted[2] || sorted[0] == sorted[1]) {
        return "isosceles"
      } else {
        return "scalene"
      }

    }
  }
}

export default Triangle
