
# Write a function, isItLetter or is_it_letter or IsItLetter, which tells us if a given character is a letter or not.

def is_it_letter(s)
    /[a-z]/i.match(s) == nil ? false : true
end