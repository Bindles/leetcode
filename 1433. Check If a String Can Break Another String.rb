#* 1433. Check If a String Can Break Another String
s1 = "abc"
s2 = "xya"
# @param {String} s1
# @param {String} s2
# @return {Boolean}
#* SOL 2 | OPTIMIZED | 295 MS | 6X FASTER
def check_if_can_break(s1, s2)
  s1_chars = s1.chars.sort
  s2_chars = s2.chars.sort
  s1_can_break_s2 = true
  s2_can_break_s1 = true
  
  s1_chars.each_with_index do |char, i|
    if char < s2_chars[i]
      s1_can_break_s2 = false
    elsif char > s2_chars[i]
      s2_can_break_s1 = false
    end
    break unless s1_can_break_s2 || s2_can_break_s1
  end
  
  s1_can_break_s2 || s2_can_break_s1
end

#* SOL 1 | ORIGINAL| SLOW| 1800 MS
def check_if_can_break(s1, s2)
  s1=s1.chars.sort.join
  s2=s2.chars.sort.join
  does1break2 = true
  does2break1 = true

  s1.chars.each_index do |i|
    does1break2 = false if s2[i] > s1[i]
    does2break1 = false if s1[i] > s2[i]
  end
  return does1break2 || does2break1
end
p check_if_can_break(s1, s2)

