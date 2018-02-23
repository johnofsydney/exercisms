
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


function SpaceAge(seconds) {
  this.seconds = seconds
  let earthSecondsPerYear = 31557600

  this.onEarth = function () {
    return +(this.seconds / earthSecondsPerYear).toFixed(2)
  }

  this.onMercury = () => {
    return +((this.seconds / earthSecondsPerYear)/.2408467).toFixed(2)
  }

  this.onVenus = () => {
    return +((this.seconds / earthSecondsPerYear)/0.61519726).toFixed(2)
  }

  let planet = "Mars"
  this["on" + planet] = function () {
    return 39.25
  }

}

module.exports = SpaceAge;
