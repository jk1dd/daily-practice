// Given a string as input, move all of its vowel to the end of the string.
//
// Example input: day Example output: dya
//
// Example input: apple Example output: pplae
//
// Note: All input string are of small letters, and the order of the vowels at the end should be the same as they were before.

// split string into chars
//
function moveVowels(string) {
  const letterArray = [...string]
  // letterArray = string.split("")
  const consonants = letterArray.filter((letter)=>!['a','e','i','o','u'].includes(letter))
  const vowels = letterArray.filter((letter)=>['a','e','i','o','u'].includes(letter))
  return consonants.join("") + vowels.join("")
}

console.log(moveVowels("apple"))
console.log(moveVowels("day"))
