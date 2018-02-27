
//space-age.js

// var earthSecondsPerYear=31557600;
//
// var planetTimeScale = {
// 	Earth: 1,
// 	Mercury: .2408467,
// 	Venus: 0.61519726,
// 	Mars: 1.8808158,
// 	Jupiter: 11.862615,
// 	Saturn: 29.447498,
// 	Uranus: 84.016846,
// 	Neptune: 164.79132
// }
//
// function SpaceAge(seconds){
// 	this.seconds=seconds;
// };
//
// Object.keys(planetTimeScale).forEach(function(planet){
// 	SpaceAge.prototype["on"+planet] = function(){
// 		return +(this.seconds/earthSecondsPerYear/planetTimeScale[planet]).toFixed(2);
// 	};
// });
//
//
// module.exports=SpaceAge;

// notes //
function SpaceAge(seconds) {
  this.seconds = seconds
  let earthSecondsPerYear = 31557600
  var planetTimeScale = {
  	Earth: 1,
  	Mercury: .2408467,
  	Venus: 0.61519726,
  	Mars: 1.8808158,
  	Jupiter: 11.862615,
  	Saturn: 29.447498,
  	Uranus: 84.016846,
  	Neptune: 164.79132
  }

  // THis worked fine. //////
  // let planet = "Mars"
  // this["on" + planet] = function () {
  //   return +(this.seconds / earthSecondsPerYear / planetTimeScale[planet] ).toFixed(2)
  // }

  // // This worked fine ////
  // planets = Object.keys(planetTimeScale)
  // planets.forEach( function (planet) {
  //   SpaceAge.prototype["on" + planet] = function () {
  //     return +(this.seconds / earthSecondsPerYear / planetTimeScale[planet] ).toFixed(2)
  //   }
  // })

  // This no work ////
  planets = Object.keys(planetTimeScale)
  planets.forEach( function (planet) {
    this["on" + planet] = function () {
      return +(this.seconds / earthSecondsPerYear / planetTimeScale[planet] ).toFixed(2)
    }
  }.bind(this)) // Bind to the rescue (or you could use a fat arrow)

}

module.exports = SpaceAge;
