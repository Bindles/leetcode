#* 1763. Longest Nice Substring
s = "YazaAay"
substr="aAa"#.split('')
# @param {String} s
# @return {String}
#*SOLVED
#*SOL 1 | SUPER FAST 100%x2 ~70MS
def longest_nice_substring(s)
  chars = s.chars.to_set
  s.each_char.with_index do |c, i|
      if !chars.include?(c.swapcase)
          return [longest_nice_substring(s[0...i]), longest_nice_substring(s[i+1..-1])].max_by(&:length)
      end
  end
  s
end
p longest_nice_substring(s)

#* SOL 2 | CONCISE
def longest_nice_substring(s)
  subs = (0...s.length).flat_map { |i| (i+1..s.length).map { |j| s[i...j] } }
  nice = subs.select { |sub| sub.chars.to_set == sub.swapcase.chars.to_set }
  nice.max_by(&:length) || ""
end
p longest_nice_substring(s)


#* WORKING....
def longest_nice_substring(s)
    (s.size).times do |i|
      p s[0, i]
    end
end
def longest_nice_substring(s)
  longest_substring = ""
  start_index = 0
  n = s.length

  (0...n).each do |i|
    (i..n).each do |j| # Change from (i...n) to (i..n)
      if !is_nice(s[i..j])
        break
      elsif j - i + 1 > longest_substring.length
        longest_substring = s[i..j]
        start_index = i
      end
    end
  end

  return longest_substring
end


def is_nice(substring)
  substring.chars.all? {|c| substring.include?(c.upcase)}
end
p longest_nice_substring(s)
p is_nice("aAa")
p s.chars.count {|c| s.include? c.upcase}
p substr.chars.all? {|c| substr.include?(c.upcase)}





