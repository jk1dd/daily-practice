// Write a function that accepts two arguments and returns the remainder after dividing the larger number by the smaller number. Division by zero should return NaN (in C#, throw a new DivideByZeroException instead). Arguments will both be integers.

function remainder(a, b){
  // Divide the larger argument by the smaller argument and return the remainder
  var array = []
  array[0] = a
  array[1] = b
  sorted_array = array.sort(function(a,b){return a-b})
  // return sorted_array[0] % sorted_array[1]
  return sorted_array[1] % sorted_array[0]
} // doesn't work still

console.log(remainder(17, 5))
console.log(remainder(0, 0))
console.log(remainder(5, 17))


// function remainder(a, b){
//   return a > b ? a % b : b % a;
// }
