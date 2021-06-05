// //
// // This is only a SKELETON file for the 'Clock' exercise. It's been provided as a
// // convenience to get you started writing code faster.
// //

// export class Clock {
//   constructor() {
//     // A JS Class has a constructor ( == initialize)
//     throw new Error('Remove this statement and implement this function');
//   }

//   toString() {
//     // instance methods. Don't need to be declared
//     throw new Error('Remove this statement and implement this function');
//   }

//   plus() {
//     throw new Error('Remove this statement and implement this function');
//   }

//   minus() {
//     throw new Error('Remove this statement and implement this function');
//   }

//   equals() {
//     throw new Error('Remove this statement and implement this function');
//   }
// }


export class Clock {
  constructor(hours, minutes = 0) {
    this.totalMinutes = calculateTotalMinutes(hours, minutes)
    this.hoursAsString = hoursAsString(this.totalMinutes);
    this.minutesAsString = minutesAsString(this.totalMinutes);
  }

  toString() {
    return(`${this.hoursAsString}:${this.minutesAsString}`);
  }
}

const hoursAsString = (totalMinutes) => {
  let hours = ~~(totalMinutes / 60) // integer -x .. +x
  let rolledHours = hours % 24 // rolls forward

  return(String(rolledHours).padStart(2, '0'));
}

const minutesAsString = (totalMinutes) => {

  return(('0' + (totalMinutes % 60)).slice(-2));
}



const calculateTotalMinutes = (hours, minutes) => {
  let modHours = hours % 24 // -23.. +23
  let rolledHours = (modHours + 24) % 24 // 0 .. 23
  return(minutes + rolledHours * 60);
}