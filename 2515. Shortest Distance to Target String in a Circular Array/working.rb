# @param {String[]} words
# @param {String} target
# @param {Integer} start_index
# @return {Integer}
def closet_target(words = ["hello","i","am","leetcode","hello"], target = "hello", startIndex = 1)
    i=0
    ii=0
    found=false
    finds=[]
    dir=0

    while ii < words.length*2-2 || finds.length == 2
      p words[i], ii
      p "found" if words[i] == target and ii > 1
      dir=1 if words[i] == target and ii > 1
      if dir==0
        i < words.length-2 ? i+=1 : i=0 
      elsif dir==1
        i < words.length-2 ? i-=1 : i=0
      end
      ii+=1
    end
    puts finds

   
    


end
closet_target