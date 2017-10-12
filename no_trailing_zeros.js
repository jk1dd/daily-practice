// Numbers ending with zeros are boring.
//
// They might be fun in your world, but not here.
//
// Get rid of them. Only the ending ones.
//
// 1450 -> 145
// 960000 -> 96
// 1050 -> 105
// -1050 -> -105
// Zero alone is fine, don't worry about it. Poor guy anyway

function noBoringZeros(number) {
  const stringNumber = number.toString()
  return stringNumber.replace(/^0+(\d)|(\d)0+$/gm, '$1$2')
}

console.log(noBoringZeros(12300000))
console.log(noBoringZeros(-1230))
