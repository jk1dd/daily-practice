// Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters,
//
// each taken only once - coming from s1 or s2. #Examples: ``` a = "xyaabbbccccdefww" b = "xxxxyyyyabklmopq" longest(a, b) -> "abcdefklmopqwxy"
// a = "abcdefghijklmnopqrstuvwxyz" longest(a, a) -> "abcdefghijklmnopqrstuvwxyz" ```
function longestPossible(s1, s2) {
  const all = (s1 + s2).split('')
  const uniqueSortedLetters = [...new Set(all)].sort()
  return uniqueSortedLetters.join('')
}

a = "xyaabbbccccdefww"
b = "xxxxyyyyabklmopq"
console.log(longestPossible(a, b))

// what i submitted
// function longest(s1, s2) {
//   const all = (s1 + s2).split('')
//   return [...new Set(all)].sort().join('')
// }
