//
// This is only a SKELETON file for the 'Complex Numbers' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class ComplexNumber {
  constructor(realNum, imaginaryNum) {
    this.realNum = realNum;
    this.imaginaryNum = imaginaryNum;
  }

  get real() {
    return this.realNum
  }

  get imag() {
    return this.imaginaryNum
  }

  add(complexTwo) {
    let [a, b] = [this.realNum, this.imaginaryNum];
    let [c, d] = [complexTwo.real, complexTwo.imag];
    const realPart = a + c;
    const imagPart = b + d;

    return( new ComplexNumber(realPart, imagPart) )
  }

  sub(complexTwo) {
    let [a, b] = [this.realNum, this.imaginaryNum];
    let [c, d] = [complexTwo.real, complexTwo.imag];
    const realPart = a - c;
    const imagPart = b - d;

    return( new ComplexNumber(realPart, imagPart) )
  }

  div(complexTwo) {
    let [a, b] = [this.realNum, this.imaginaryNum];
    let [c, d] = [complexTwo.real, complexTwo.imag];
    const realPart = (a * c + b * d)/(c**2 + d**2)
    const imagPart = (b * c - a * d)/(c**2 + d**2)

    return( new ComplexNumber(realPart, imagPart) )
  }

  mul(complexTwo) {
    let [a, b] = [this.realNum, this.imaginaryNum];
    let [c, d] = [complexTwo.real, complexTwo.imag];
    const realPart = (a * c - b * d)
    const imagPart = (b * c + a * d)

    return( new ComplexNumber(realPart, imagPart) )
  }

  get abs() {
    let [a, b] = [this.realNum, this.imaginaryNum];

    return( (a**2 + b**2)**0.5 )
  }

  get conj() {
    let [a, b] = [this.realNum, this.imaginaryNum];
    return( new ComplexNumber(a, (b - 2 * b)) )
  }

  get exp() {
    // Raising e to a complex exponent can be expressed as `e^(a + i * b) = e^a * e^(i * b)`, the last term of which is given by Euler's formula `e^(i * b) = cos(b) + i * sin(b)`.
    let [a, b] = [this.realNum, this.imaginaryNum];
    let e = Math.exp(1);
    const realPart = e**a + Math.cos(b);
    const imagPart = Math.sin(b);

    return( new ComplexNumber(realPart, imagPart) );
  }
}
