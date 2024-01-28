# @param {String} s
# @return {String}



def longest_palindrome(s="abab")
  arrays=[]
  pals=[]
  s.each_char do |eachchar|
    p arrays << eachchar
    p arrays.join and pals << arrays.join if arrays.reverse == arrays

  end
  p arrays.reverse == arrays
  p pals
  p ["b","a","b"].join('')
  p "bab".reverse == "bab"
end


def longest_palindrome(s="cbab")
  arrays=[]
  pals=[]
  (0...s.length).each do |start_idx|
    arrays=[]
    s.each_char.with_index do |eachchar,ind|
      if ind >= start_idx
        p arrays << eachchar
        p arrays.join and pals << arrays.join if arrays.reverse == arrays 
      end

    end
  end
  #p arrays.reverse == arrays
  p pals
  #p ["b","a","b"].join('')
  #p "bab".reverse == "bab"
  pals.max_by(&:length) || ""
end

p longest_palindrome


def longest_palindrome(s = "abab")
  pals = []

  # Method to check if a string is a palindrome
  def palindrome?(str)
    str == str.reverse
  end

  # Iterate over each starting index
  (0...s.length).each do |start_idx|
    # Iterate over each ending index
    (start_idx...s.length).each do |end_idx|
      # Generate the substring
      substring = s[start_idx..end_idx]
      # Check if the substring is a palindrome
      pals << substring if palindrome?(substring)
    end
  end
  p pals
  pals.max_by(&:length) || ""
end

puts longest_palindrome("cbab")

p '---'
def longest_palindrome(s="cbab")
  arrays=[]
  pals=[]
  (0...s.length).each do |start_idx|
    arrays=[]
    s.each_char.with_index do |eachchar,ind|
      if ind >= start_idx
        p arrays << eachchar
        p arrays.join and pals << arrays.join if arrays.reverse == arrays
      end

    end
  end
  #p arrays.reverse == arrays
  p pals
  #p ["b","a","b"].join('')
  #p "bab".reverse == "bab"
  pals.max_by(&:length) || ""
end

p longest_palindrome