# Write a simple parser that will parse and run Deadfish.

# Deadfish has 4 commands, each 1 character long:

# i increments the value (initially 0)
# d decrements the value
# s squares the value
# o outputs the value into the return array
# Invalid characters should be ignored.

def parse(data)
    arr = []
    value = 0
    data_new = data.split('')
    data_new.each do |letter| 
      if letter == 'i'
        value += 1
      elsif letter == 'd'
        value -= 1
      elsif letter == 's'
        value = value**2
      elsif letter == 'o'
        arr << value
      end
    end
     
     arr
end