# DESCRIPTION:
# Numbers ending with zeros are boring.

# They might be fun in your world, but not here.

# Get rid of them. Only the ending ones.

# 1450 -> 145
# 960000 -> 96
# 1050 -> 105
# -1050 -> -105
# Zero alone is fine, don't worry about it. Poor guy anyway

def no_boring_zeros(num)

    if num == 0
      return 0
    end
    
    new_num = num
      while new_num % 10 == 0 do
        new_num = new_num / 10
      end
      
      new_num
end

