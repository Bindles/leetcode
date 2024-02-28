# @param {String} s
# @return {String}
def sort_vowels(s = "lEetcOde")
  vowelsmap = 'aeiouAEIOU'
  p s.chars.select{ |c| vowelsmap.include?(c)}
  p s.chars.map.with_index{ |c,ind| c unless vowelsmap.include?(c)}
end
p sort_vowels

def sort_vowels(s = "lEetcOde")
  a=0
  vowelsmap = 'aeiouAEIOU'
  p vowels = s.chars.select{ |c| vowelsmap.include?(c)}.sort!
  p s.chars.map.with_index{ |c,ind| vowelsmap.include?(c) ? a : c}
  
end
p sort_vowels



p 'ssss'
#*SOL 1 | WORKS
def sort_vowels(s = "lEetcOde")
  a = -1
  vowelsmap = 'aeiouAEIOU'
  p vowels = s.chars.select{ |c| vowelsmap.include?(c)}
  p vowels.sort!
  s.chars.map.with_index do |c, ind|
    if vowelsmap.include?(c)
      a += 1
    end
    vowelsmap.include?(c) ? vowels[a] : c
  end.join
end
p sort_vowels

#*SOL 2
def sort_vowels(s = "lEetcOde")
  vowelsmap = 'aeiouAEIOU'
  p vowels = s.chars.select{ |c| vowelsmap.include?(c)}.sort!
  p s.chars.map.with_index{ |c,ind| vowelsmap.include?(c) ? s[ind] = vowels.shift : c }.join
end
p sort_vowels
#*SOL 2.5 | CONCISE
def sort_vowels(s = "lEetcOde")
  p vowels = s.chars.select{ |c| 'aeiouAEIOU'.include?(c)}.sort!
  p s.chars.map.with_index{ |c,ind| 'aeiouAEIOU'.include?(c) ? s[ind] = vowels.shift : c }.join
end
p sort_vowels

def sort_vowels(s = "lEetcOde")
  vowels = []
  vowelsmap = Set['A','E','I','O','U','a','e','i','o','u']

  s.each_char { |char| vowels << char if vowelsmap.include?(char) }
  vowels.sort!
      
  s.each_char.with_index do |char,i|
      if vowelsmap.include?(char)
          s[i] = vowels.shift
      end
  end
  s
end
p sort_vowels



def sort_vowels(s = "lEetcOde")
  vowelsmap = 'aeiouAEIOU'
  p vowels = s.chars.select { |c| vowelsmap.include?(c) }
  p string = s.chars.map { |c| vowelsmap.include?(c) ? nil : c }
  p vowels.sort
  p string.map!.with_index { |x, ind| x.nil? ? vowels[ind] : x }
  string.join
end

puts sort_vowels


def sort_vowels(s = "lEetcOde")
  hash = Hash.new(0)
  vowelsmap = 'aeiouAEIOU'
  p vowels =s.chars.select{ |c| vowelsmap.include?(c)}
  p string = s.chars.map.with_index{ |c,ind| ind if vowelsmap.include?(c)}.compact
  p vowels.sort!
  p vowels.each.with_index { |char,ind|
    if vowels.count(char) == 1
    hash[char] = string[ind]
    else
#store array for multiples
    end
  }
  p hash
    
end
p sort_vowels

def sort_vowels(s = "lEetcOde")
  hash = {}
  vowelsmap = 'aeiouAEIOU'
  vowels = s.chars.select { |c| vowelsmap.include?(c) }
  indices = s.chars.map.with_index { |c, ind| ind if vowelsmap.include?(c) }.compact
  vowels.sort!

  vowels.each.with_index do |char, ind|
    if vowels.count(char) == 1
      hash[char] = indices[ind]
    else
      hash[char] ||= []
      hash[char] << indices[ind]
    end
  end

  hash
end

puts sort_vowels("lEetcOde") # Output: {"E"=>1, "O"=>2, "e"=>[5, 7]}



def sort_vowels(s = "lEetcOde")
  hash = {}
  vowelsmap = 'aeiouAEIOU'
  vowels = s.chars.select { |c| vowelsmap.include?(c) }
  indices = s.chars.map.with_index { |c, ind| ind if vowelsmap.include?(c) }.compact
  vowels.sort!

  vowels.each.with_index do |char, ind|
    if vowels.count(char) == 1
      hash[char] = indices[ind]
    else
      hash[char] ||= []
      hash[char] << indices[ind]
    end
  end

  hash.each do |char, index|
    if index.is_a?(Array)
      index.each_with_index { |i, ind| s[i] = vowels[ind] }
    else
      s[index] = char
    end
  end

  s
end
p sort_vowels



def insert_letters(indices, string)
  indices.each { |index| string[index] = 'a' }
  string
end

indices = [1, 4]
string = "heymen"

result = insert_letters(indices, string)
puts result


def insert_letters(indices, string)
  indices.each { |k,index| string[index] = k }
  string
end

indices = {"x" => 1, "z" => 4}
# indices["x"] = 1
# indices["z"] = 4
p indices
string = "heymen"

result = insert_letters(indices, string)
puts result

p hash = {x: "guy", z: 21}
hash.each{|k,v| p k.to_s, v}




