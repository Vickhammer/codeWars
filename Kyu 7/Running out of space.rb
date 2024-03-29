# DESCRIPTION:
# Kevin is noticing his space run out! Write a function that removes the spaces from the values and returns an array showing the space decreasing.
# For example, running this function on the array ['i', 'have','no','space'] would produce ['i','ihave','ihaveno','ihavenospace']

# FUNDAMENTALS

def spacey(array)
  i = 1
  while i <= array.length - 1
    array[i] = array[i - 1] + array[i]
    i += 1
  end
  array
end