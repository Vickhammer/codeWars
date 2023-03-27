# DESCRIPTION:
# Description:
# Replace all vowel to exclamation mark in the sentence. aeiouAEIOU is vowel.

# Examples
# replace("Hi!") === "H!!"
# replace("!Hi! Hi!") === "!H!! H!!"
# replace("aeiou") === "!!!!!"
# replace("ABCDE") === "!BCD!"

def replace(s)
    sArray = s.split('')
    sArray.each_with_index do |l,idx|
      if 'aeiouAEIOU'.include?(l)
        sArray[idx] = '!'
      end
    end
    return sArray.join('')
end