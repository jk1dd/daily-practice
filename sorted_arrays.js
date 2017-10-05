// Given any number of arrays each sorted in ascending order, find the nth smallest number of all their elements.
//
// All the arguments except the last will be arrays, the last argument is n.
//
// nthSmallest([1,5], [2], [4,8,9], 4) // returns 5 because it's the 4th smallest value

function arraySorter(...arrays) {
  const concattedArrays = arrays.reduce((acc,val)=>[...acc, ...val])
  return concattedArrays
  // console.log(...arrays)
  // return 0
}

console.log(arraySorter([1,5], [2], [4,8,9], 4))
