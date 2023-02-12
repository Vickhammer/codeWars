DESCRIPTION:
// There is an array with some numbers. All numbers are equal except for one. Try to find it!

// find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
// find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
// It’s guaranteed that array contains at least 3 numbers.

// The tests contain some very huge arrays, so think about performance.

// This is the first kata in series:

function findUniq(arr) {
    let sortedArr = arr.sort((a,b) => a - b )
    if (sortedArr[0] == sortedArr[1]) {
      return sortedArr[sortedArr.length - 1]
    }
    else {
      return sortedArr[0]
    }
  }