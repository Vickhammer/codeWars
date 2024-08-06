# Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

# For example (Input --> Output):

def persistence(n)
    count = 0
    until n.to_s.length == 1
      n = n.to_s.split('').map(&:to_i).reduce(:*)
      count += 1
    end
  count
end