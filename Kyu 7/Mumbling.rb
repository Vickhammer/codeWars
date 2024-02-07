# This time no story, no theory. The examples below show you how to write function accum:

# Examples:
# accum("abcd") -> "A-Bb-Ccc-Dddd"
# accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt") -> "C-Ww-Aaa-Tttt"

def accum(s)
    s = s.downcase.split('')
  (0..s.length-1).each do |i|
    if i == 0
      s[i] = s[i].upcase
    else
      s[i] = s[i].upcase + s[i] * i
    end
  end
return s.join('-')
end