// A hero is on his way to the castle to save the princess imprisoned inside. However, he's been told that the castle is surrounded with a couple of powerful dragons! each dragon takes 2 bullets to be defeated, our hero has no idea how many bullets he should carry.. Assuming he's gonna grab a specific given number of bullets and move forward to fight another specific given number of dragons, will he survive?
//
// Return True if yes, False otherwise :)

function hero(bullets, dragons) {
  if (dragons - (bullets/2) >= 0) {
    return true
  } else {
    return false
  }
}

console.log(hero(2, 1))
console.log(hero(2, 2))
