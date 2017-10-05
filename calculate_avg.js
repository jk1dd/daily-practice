function find_average(array) {
  const total = array.reduce((a, b)=> a + b, 0)
  return total / array.length;
}

console.log(find_average([1,2,3]))
console.log(find_average([1,1,1]))

// find_average([1,1,1])
