// DESCRIPTION:
// FizzBuzz is often one of the first programming puzzles people learn. Now undo it with reverse FizzBuzz!

// Write a function that accepts a string, which will always be a valid section of FizzBuzz. Your function must return an array that contains the numbers in order to generate the given section of FizzBuzz.

// Notes:

// If the sequence can appear multiple times within FizzBuzz, return the numbers that generate the first instance of that sequence.
// All numbers in the sequence will be greater than zero.
// You will never receive an empty sequence.
// Examples
// reverse_fizzbuzz("1 2 Fizz 4 Buzz")        -->  [1, 2, 3, 4, 5]
// reverse_fizzbuzz("Fizz 688 689 FizzBuzz")  -->  [687, 688, 689, 690]
// reverse_fizzbuzz("Fizz Buzz")              -->  [9, 10]

function reverseFizzBuzz(s) {
    switch (s) {
        case 'Fizz':
          return [3];
          break;
        case 'Buzz':
          return [5]
          break;
        case 'Fizz Buzz':
          return [9,10]
          break;
        case 'Buzz Fizz':
          return [5,6]
          break;
        case 'FizzBuzz':
          return [15]
          break;
    }
    
  let strArr = s.split(' ').map(el => Number(el))
  
    for(let i = 0; i < strArr.length; i++){
      if(isNaN(strArr[i])){
        if(Number.isInteger(strArr[i + 1])){
           strArr[i] = strArr[i + 1] - 1
           }
        else if(Number.isInteger(strArr[i - 1])){
           strArr[i] = strArr[i - 1] + 1
           }
      }
    } 
    if (isNaN(strArr[0])) {
      strArr[0] = strArr[1] - 1
    }
    return strArr
  }