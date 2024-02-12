# @param {String} s
# @return {Integer}

#MY SOL | CONCISE
def balanced_string_split(s)
  count=0;x=0; s.each_char{ _1 == "R" ? count+=1 : count-=1;x+=1 if count==0} and x   
end

#MY SOL
def balanced_string_split(s)
  count=0
  x=0
  s.each_char { 
      _1 == "R" ? count+=1 : count-=1
       x+=1 if count==0
  }
  x   
end
p balanced_string_split("RLRRLLRLRL")