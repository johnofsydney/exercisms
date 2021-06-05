export class ResistorColor {
  private colors: string[]

  constructor(colors: string[]) {
    if (colors.length < 2) {
      throw(Error('At least two colors need to be present'))
    }

    this.colors = colors
  }
  value = (): number => {
    let colorOne = this.colors[0];
    let colorTwo = this.colors[1];

    let valueOne = COLOR_VALUES[colorOne];
    let valueTwo = COLOR_VALUES[colorTwo];

    let value = valueOne + valueTwo

    return(parseInt(value));
  }
}

const COLOR_VALUES: {[id:string] : string} = {
  black: '0',
  brown: '1',
  red: '2',
  orange: '3',
  yellow: '4',
  green: '5',
  blue: '6',
  violet: '7',
  grey: '8',
  white: '9'
}
