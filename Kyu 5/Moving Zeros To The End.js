// DESCRIPTION:
// Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.

// moveZeros [1,2,0,1,0,1,0,3,0,1] #-> [1,2,1,1,3,1,0,0,0,0]

function moveZeros(arr) {
    let nonZeros = arr.filter(x => x !== 0)
    let Zeros = arr.filter(x => x === 0)
    return nonZeros.concat(Zeros)
  }