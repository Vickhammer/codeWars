# Given a string, capitalize the letters that occupy even indexes and odd indexes separately, and return as shown below. Index 0 will be considered even.

# For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See test cases for more examples.

# The input will be a lowercase string with no spaces.

# Good luck!

# If you like this Kata, please try:

def capitalize(a)

    word1 = a.split('').map(&:clone)
    word2 = a.split('').map(&:clone)
   
    word1.each_with_index do |el, idx|
      if idx % 2 == 0
        word1[idx] = el.upcase
      else
        word1[idx]
      end
     end
   
     word2.each_with_index do |el, idx|
      if idx % 2 == 1
        word2[idx] = el.upcase
      else
        word2[idx]
       end
      end 
     
     return [word1.join(), word2.join()]
end