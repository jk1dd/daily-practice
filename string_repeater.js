// Write a function called repeatStr which repeats the given string string exactly n times.
//
// repeatStr(6, "I") // "IIIIII"
// repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"

function repeatStr(times, char) {
  return char.repeat(times)
}

console.log(repeatStr(6, "I"))
