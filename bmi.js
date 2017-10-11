// Write function bmi that calculates body mass index (bmi = weight / height ^ 2).
//
// if bmi <= 18.5 return "Underweight"
//
// if bmi <= 25.0 return "Normal"
//
// if bmi <= 30.0 return "Overweight"
//
// if bmi > 30 return "Obese"

// function bmi(weight, height) {
//   const numberBmi = weight / (height * height)
//   if (numberBmi <= 18.5) {
//     return "Underweight"
//   } else if (18.6 >= numberBmi <= 24.9) {
//     return "Normal"
//   } else if (25.0 >= numberBmi <= 29.9) {
//     return "Overweight"
//   } else if (numberBmi >= 30.0){
//     return "Obese"
//   } else {
//     return "I dunno"
//   }
// }
function bmi(weight, height) {
  const numberBmi = weight / (height * height)
  if (numberBmi <= 18.5) {
    return "Underweight"
  } else if (numberBmi <= 25.0) {
    return "Normal"
  } else if (numberBmi <= 30.0) {
    return "Overweight"
  } else if (numberBmi > 30.0){
    return "Obese"
  } else {
    return "I dunno"
  }
}


console.log(bmi(80, 1.80))
