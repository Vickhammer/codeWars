# An Arithmetic Progression is defined as one in which there is a constant difference between the consecutive terms of a given series of numbers. You are provided with consecutive elements of an Arithmetic Progression. There is however one hitch: exactly one term from the original series is missing from the set of numbers which have been given to you. The rest of the given series is the same as the original AP. Find the missing term.

# You have to write a function that receives a list, list size will always be at least 3 numbers. The missing term will never be the first or last one.

# Example
# findMissing([1, 3, 5, 9, 11]) == 7

# def find_missing(sequence)
#   differences = Hash.new()
#   (0...sequence.length - 1).each do |i|
#      cd = sequence[i+1] - sequence[i]
#      differences[i] = cd
#   end
#   common_difference = differences.values.group_by { |e| e }.values.max_by(&:size).first
#   val = differences.values.select{|el| differences.values.count(el) == 1}
#   return sequence[differences.key(val[0])] + common_difference
# end

def find_missing(arr)
    ((arr.length + 1) * (arr[0] + arr[-1]))/2 - arr.sum
end