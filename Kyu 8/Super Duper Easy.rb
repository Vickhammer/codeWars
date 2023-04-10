# DESCRIPTION:
# Make a function that returns the value multiplied by 50 and increased by 6. If the value entered is a string it should return "Error".

def problem(x)
    !x.is_a?(Numeric) ? "Error" : x * 50 + 6
end