// Write a function that returns the number of arguments it received.

// args_count() --> 0
// args_count('a') --> 1
// args_count('a', 'b') --> 2
// The function must work for keyword arguments too:

// args_count(x:10, y:20, 'z') --> 3

function args_count() {
    return arguments.length
  }