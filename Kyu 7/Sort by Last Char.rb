# DESCRIPTION:
# Given a string of words (x), you need to return an array of the words, sorted alphabetically by the final character in each.

# If two words have the same last letter, they returned array should show them in the order they appeared in the given string.

# All inputs will be valid.

def last(x)
    x = x.split(' ').map(&:reverse)
    alpha = ("a".."z").to_a
    sorted = false
    while !sorted
      sorted = true
      (0...x.length-1).each do |i|
        if alpha.index(x[i][0]) > alpha.index(x[i+1][0])
          x[i],x[i+1] = x[i+1],x[i]
          sorted = false
        end
      end
    end
    return x.map(&:reverse)
    
  end