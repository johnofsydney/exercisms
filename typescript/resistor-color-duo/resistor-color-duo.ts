export class ResistorColor {
  private colors: string[]

  constructor(colors: string[]) {
    if (colors.length < 2) {
      throw(Error('At least two colors need to be present'))
    }

    this.colors = colors.slice(0,2);
  }
  value = (): number => {
    // map each color value to its corresponding digit
    // and join the digits as a single digit
    let valueString = this.colors.reduce( (accumulator, color) => {
      return accumulator + (COLOR_VALUES[color])
    }, '')

    return parseInt(valueString);
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
