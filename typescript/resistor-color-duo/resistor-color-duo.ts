export class ResistorColor {
  constructor(
    private colors: string[]
    ) {
    if (colors.length < 2) {
      throw(Error('At least two colors need to be present'))
    }
  }

  value = (): number => {
    let tens = RESISTOR_COLORS.indexOf(this.colors[0]);
    let units = RESISTOR_COLORS.indexOf(this.colors[1]);

    return (tens * 10 + units)
  }
}


const RESISTOR_COLORS = [
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white'
]
