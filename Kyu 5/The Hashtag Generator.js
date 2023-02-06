// DESCRIPTION:
// The marketing team is spending way too much time typing in hashtags.
// Let's help them with our own Hashtag Generator!

// Here's the deal:

// It must start with a hashtag (#).
// All words must have their first letter capitalized.
// If the final result is longer than 140 chars it must return false.
// If the input or the result is an empty string it must return false.
// Examples
// " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
// "    Hello     World   "                  =>  "#HelloWorld"
// ""                                        =>  false

function generateHashtag (str) {
    if (str == ' '.repeat(str.length)) {
      return false
    }
    let strArr = str.trim().split(' ').filter(x => x != ' ')
    let hash = '#'
    for(let i = 0; i < strArr.length ; i++){
      hash += strArr[i].charAt(0).toUpperCase() + strArr[i].slice(1)
    }
    if(hash.length > 140){
      return false
    }
    return hash
  }