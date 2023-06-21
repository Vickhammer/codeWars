# DESCRIPTION:
# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !

def pig_it(text)
    textArray = text.split(' ')
    textArray.map! do |word| 
      if word.match(/\w/i)
        word[1..-1] + word[0] + "ay"
      else
        word
      end
      
    end
    textArray.join(' ')
end