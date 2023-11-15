# DESCRIPTION:
# Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.

# moveZeros [1,2,0,1,0,1,0,3,0,1] #-> [1,2,1,1,3,1,0,0,0,0]

def moveZeros(arr) 
    zero_arr = arr.select{|el| el == 0}
    new_arr2 = arr.select{|el| el !=0 }
    return new_arr2.concat(zero_arr)
  end