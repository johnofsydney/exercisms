export const age = (planet, numberSeconds) => {

  let planets = {
    mercury: 0.2408467,
    venus: 0.61519726,
    earth: 1.0,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132,
  }

  const SECONDS_IN_YEAR = 31557600
  let result = numberSeconds / SECONDS_IN_YEAR / planets[planet]

  return( roundToTwo(result) );
}

const roundToTwo = (num) => {
    return(Math.round(num * 100) / 100)
}


// the test file receives the code as
// import { age } from './space-age';
//
// In this style it is importing a
// { function } from a 'file'