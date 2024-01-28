  # @param {String} num
# @return {String}
#MY_SOLUTION
def largest_odd_number(num="5322")
  return num if num.to_i.odd?
  si = num.length - 2
  while si >= 0
    return num[0..si] if num[si].to_i.odd?
    si -= 1
  end
  return ""
end

p largest_odd_number

#MY_BETTER_SOLUTION
def largest_odd_number(num="5322")
  (num.length-1).downto(0).each do |i|
      return num[0..i] if num[i].to_i.odd?
  end
  return ""
end

p largest_odd_number

#ONE-LINER
def largest_odd_number(num="5322")
  (num.length-1).downto(0).each {|i| return num[0..i] if num[i].to_i.odd? } and return ""
end

p largest_odd_number


#EARLY WORKING:

def largest_odd_number(num = "5222")
  if num.to_i.odd?
    return num
  elsif num.length > 1
    a = num.split('')
    a.pop
    while a.size >= 1
      if a.join('').to_i.odd?
        return a.join('')
      else
        a.pop
      end
    end
  end
  return ""
end

def largest_odd_number(num = "5322")
  res=[]
  if num.to_i.odd?
    return num
  elsif num.length > 1
    num.chars.each do |c|
      res << c.to_i if c.to_i.odd?
    end
  end
  res.max.to_s
end

