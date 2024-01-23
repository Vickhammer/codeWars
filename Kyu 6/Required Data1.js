// DESCRIPTION:
// We need a function that receives an array or list of integers (positive and negative) and may give us the following information in the order and structure presented below:

// [(1), (2), (3), [[(4)], 5]]

// (1) - Total amount of received integers.

// (2) - Total amount of different values the array has.

// (3) - Total amount of values that occur only once.

// (4) and (5) both in a list

// (4) - It is (or they are) the element(s) that has (or have) the maximum occurrence. If there are more than one, the elements should be sorted (by their value obviously)

// (5) - Maximum occurrence of the integer(s)

// Let's see some cases:

// for list [-3, -2, -1, 3, 4, -5, -5, 5, -1, -5] ----> [10, 7, 5, [[-5], 3]]

// (1) - The list has ten elements (10 numbers)

// (2) - We have seven different values: -5, -3, -2, -1, 3, 4, 5 (7 values)

// (3) - The numbers that occur only once: -3, -2, 3, 4, 5 (5 values)

// (4) and (5) - The number -5 occurs three times (3 occurrences)



// for list [4, 4, 2, -3, 1, 4, 3, 2, 0, -5, 2, -2, -2, -5] ----> [14, 8, 4, [[2, 4], 3]]

function mostFrequent(lst, a) {
    let maxcount = 0;
    let countAtIndex = []
    let element_having_max_freq = [];
    for (let i = 0; i < a; i++) {
        let count = 0;
        for (let j = 0; j < a; j++) {
            if (lst[i] == lst[j]){
                count++;
            }
            }
          countAtIndex.push(count)
        }
    for (let i = 0; i < a; i++) {
      if(Math.max(...countAtIndex) == countAtIndex[i] && element_having_max_freq.indexOf(lst[i]) == -1){
        element_having_max_freq.push(lst[i])
      }
      }

    return [element_having_max_freq.sort((a,b) => a-b),Math.max(...countAtIndex)];
}

function countSel(lst) {
  let a = lst.length;
  let b = lst.filter((el,ind,self) => self.indexOf(el) === ind).length;
  let c = lst.filter((el,ind,self) => self.indexOf(el) === self.lastIndexOf(el)).length;
  let d = mostFrequent(lst, a)
return [a,b,c,d]
}