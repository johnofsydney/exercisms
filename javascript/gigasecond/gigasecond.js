export const gigasecond = (inputDate) => {
  const GIGA = Math.pow(10, 12);

  return (new Date(inputDate.getTime() + GIGA));
}