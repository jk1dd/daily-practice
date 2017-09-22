// Write a function that accepts two arguments and returns the remainder after dividing the larger number by the smaller number. Division by zero should return NaN (in C#, throw a new DivideByZeroException instead). Arguments will both be integers.

function remainder(a, b){
  // Divide the larger argument by the smaller argument and return the remainder
  var array = []
  array[0] = a
  array[1] = b
  sorted_array = array.sort()
  return sorted_array[0] % sorted_array[1]
} // doesn't work still
