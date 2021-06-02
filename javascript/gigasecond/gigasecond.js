const GIGA = 1e12;

export const gigasecond = (inputDate) => {
  return (new Date(inputDate.getTime() + GIGA));
}