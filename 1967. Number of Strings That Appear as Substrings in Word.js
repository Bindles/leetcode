// 1967. Number of Strings That Appear as Substrings in Word
patterns = ["a","abc","bc","d"]
word = "abc"
// SOL 1
function num_of_strings(patterns, word) {
  return patterns.filter(p => word.includes(p)).length;
}

console.log(num_of_strings(patterns, word))