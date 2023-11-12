# DESCRIPTION:
# There is an array with some numbers. All numbers are equal except for one. Try to find it!

# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
# It’s guaranteed that array contains at least 3 numbers.

# The tests contain some very huge arrays, so think about performance.

# This is the first kata in series:

def find_uniq(arr)
    if arr.first == arr.last 
      arr.select{|el| el != arr.first}[0]
    elsif arr[0] == arr[1]
      arr.select{|el| el != arr.first}[0]
    else
      arr.select{|el| el != arr[1]}[0]
    end
end