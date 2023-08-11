# DESCRIPTION:
# The main idea is to count all the occurring characters in a string. If you have a string like aba, then the result should be {'a': 2, 'b': 1}.

# What if the string is empty? Then the result should be empty object literal, {}.

def count_chars(s)
    letter_count = Hash.new(0)
    s.each_char do |l|
      letter_count[l] += 1
    end
    letter_count
end