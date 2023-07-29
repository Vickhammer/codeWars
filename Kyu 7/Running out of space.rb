# DESCRIPTION:
# Kevin is noticing his space run out! Write a function that removes the spaces from the values and returns an array showing the space decreasing.
# For example, running this function on the array ['i', 'have','no','space'] would produce ['i','ihave','ihaveno','ihavenospace']

# FUNDAMENTALS

def spacey(array)
    newArr = []
    i = 0
    k = 0
    word = ''
    while i < array.length
      if i == 0
        newArr << array[i] 
      elsif i > 0
        while k <= i
          word += array[k]
          k += 1
        end
      newArr << word
      k = 0
      end      
      i += 1
      word = ''
    end
    return newArr
  end