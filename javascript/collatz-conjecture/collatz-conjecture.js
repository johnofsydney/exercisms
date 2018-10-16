export const steps = function(num) {
  if (num <= 0) {throw new Error("Only positive numbers are allowed") }
  let counter = 0;
  while (num != 1) {
    counter ++
    if (num % 2 === 0) { num /= 2 }
    else { num = num * 3 + 1 }
  }
  return counter
}
