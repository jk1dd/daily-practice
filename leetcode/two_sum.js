// Given an array of integers nums and an integer target, 
// return indices of the two numbers such that they add up to target.

// nums = [2,7,11,15], target = 9

// for each item in the Array
// remember its index
// subtract it from the target
// scan the rest of the array for that value
// and if the value is found, return its array along with the item that worked

// var twoSum = function(nums, target) {
//   let final = [];

//   for (let index = 0; index < nums.length; index++) {
//     const element = nums[index];
//     const difference = target - element;
    
//     if (nums.slice(index+1).findIndex(e => e === difference) !== -1) {
//       final = [index, nums.findIndex(e => e === difference)];
//       return final;
//     }
//   }
// };

// let nums = [2,7,11,15]
// let target = 9
// let nums = [3,2,4]
// let nums = [3,3]
// let target = 6

// console.log(twoSum(nums, target))

// brute force, On2
const twoSum = (nums, target) => {
  let final = [];

  // looping thru array
  for (let index = 0; index < nums.length; index++) {
    // looping through the rest of the array
    for (let j = index + 1; j < nums.length; j++) {
      // if they equal target, put them in the final
      if (nums[index] + nums[j] === target) {
        final.push(index);
        final.push(j)
      }
    }
  }
  return final;
}


// better using Hash/Object
const twoSumBetter = (nums, target) => {
  let numHash = {};
  // iterate thru array, assign element as key and index as value in numHash
  for (let index = 0; index < nums.length; index++) {
    const element = nums[index];
    numHash[element] = index;
  }
  // console.log(numHash)
  // loop thru array. check if numHash has property(KEY) of diff (that is not the same as index)
  // if so, return the index and relevant other index
  for (let index = 0; index < nums.length; index++) {
    const diff = target - nums[index];
    if (numHash.hasOwnProperty(diff) && numHash[diff] !== index) {
      return [index, numHash[diff]];
    }
  }
}

let nums = [2,7,11,15]
let target = 9
console.log(twoSumBetter(nums, target))