# Instructions
# Write a function that takes a single non-empty string of only lowercase and uppercase ascii letters (word) as its argument, and returns an ordered list containing the indices of all capital (uppercase) letters in the string.

# Example (Input --> Output)
# "CodEWaRs" --> [0,3,4,6]

def capitals(word)
    capitals = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
    answer = []
    
    word.split('').each_with_index do |el, idx|
      if capitals.include?(el)
        answer << idx
      end
    end
    answer
end