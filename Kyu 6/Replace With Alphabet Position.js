
// Welcome.

// In this kata you are required to, given a string, replace every letter with its position in the alphabet.

// If anything in the text isn't a letter, ignore it and don't return it.

// "a" = 1, "b" = 2, etc.

// Example
// alphabet_position("The sunset sets at twelve o' clock.")
// Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" ( as a string )


function alphabetPosition(text) {
    text.split(' ').join('')
    let chari = ""
    let arr = []
    let alphabet = "Aabcdefghijklmnopqrstuvwxyz".split('')
    for(let i = 0; i < text.length; i++){
      chari = text.charAt(i).toLowerCase();
      if(alphabet.indexOf(chari) > -1){
        arr.push(alphabet.indexOf(chari));
      }
    }
    return arr.toString().split(',').join(' ');
  }