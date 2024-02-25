# @param {String} s
# @return {Boolean}
#*SOL 1
def is_valid(s)
  stack = []
  pairs = {'(' => ')','{' => '}','[' => ']'}
  s.each_char do |c|
    if pairs.key?(c)
      stack.push(c)
    else
      return false if stack.empty? || pairs[stack.pop] != c
    end
  end
  stack.empty?
end

#*SOMEONE ELSE SOL | SIMILAR
# @param {String} s
# @return {Boolean}
def is_valid(s)
  bracket = {
      "(" => ")",
      "[" => "]",
      "{" => "}",
  }

  stack = []
  s.each_char do |char|
      if bracket.keys.include?(char)
          stack << char
      else
          return false if char != bracket[stack.pop]
      end
  end
  stack.empty?
end




#*BELOW HERE DOES NOT WORK
#WORKING...
def is_valid(s = "()[]{}")
    s.chars.step(2).with_index {|c,i| p "#{s[i]} #{s[i+1]}" }
end

def is_valid(s = "()[]{}")
  s.chars.each_slice(2) do |pair|
      if pair.length == 2
          p "#{pair[0]} #{pair[1]}"
          # Your logic with pair[0] and pair[1] goes here
      end
  end
end
p is_valid

def is_valid(s = "()[]{}")
  s.chars.each_slice(2) do |pair|
    if pair.length == 2
      char1 = pair[0]
      char2 = pair[1]
      consecutive = char2 == char1.next
      p "#{char1} #{char2} #{consecutive}"
    end
  end
end

p is_valid

def is_valid(s = "()[]{}")
  s.chars.each_slice(2) do |pair|
    if pair.length == 2
      char1 = pair[0]
      char2 = pair[1]
      consecutive = (char1 == '(' && char2 == ')') ||
                    (char1 == '[' && char2 == ']') ||
                    (char1 == '{' && char2 == '}')
      p "#{pair.join} #{consecutive}"
    end
  end
end

p is_valid

def is_valid(s = "()[]{}")
  valid = true
  s.chars.each_slice(2) do |pair|
    if pair.length == 2
      char1 = pair[0]
      char2 = pair[1]
      consecutive = (char1 == '(' && char2 == ')') ||
                    (char1 == '[' && char2 == ']') ||
                    (char1 == '{' && char2 == '}')
      valid &&= consecutive
      p "#{pair.join} #{consecutive}"
    end
  end
  valid
end

p is_valid








