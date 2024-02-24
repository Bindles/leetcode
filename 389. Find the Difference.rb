# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s = "abcd", t = "abcdee")
  stal =s.chars.tally
  ttal = t.chars.tally
end

def find_the_difference(s = "abcd", t = "abcdee")
  stal = s.chars.tally
  ttal = t.chars.tally
  
  difference = {}
  
  # Iterate over the tallies of characters in string s
  stal.each do |char, count|
    # Check if the character exists in the tally of string t
    if ttal[char].nil? || ttal[char] != count
      # If the character count is different or the character doesn't exist in t, add it to the difference hash
      difference[char] = count
    end
  end
  
  # Iterate over the tallies of characters in string t
  ttal.each do |char, count|
    # Check if the character exists in the tally of string s
    if stal[char].nil? || stal[char] != count
      # If the character count is different or the character doesn't exist in s, add it to the difference hash
      difference[char] = count
    end
  end
  
  difference&.first[0]  * difference&.first[1]
end

def find_the_difference(s, t)
  char_count = s.chars.tally
  t.each_char.find { |char| (char_count[char] -= 1) < 0 }
end

#WORKS
# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  hash = t.chars.tally
  s.each_char do |c|
      hash[c]-=1
  end
  hash.key(1)
end


p find_the_difference