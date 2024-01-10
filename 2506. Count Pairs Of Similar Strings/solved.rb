# @param {String[]} words
# @return {Integer}
#MY SOLUTION 22mins
def similar_pairs(words = ["aba","aabb","abcd","bac","aabc"])
  wordmaps=[]
  result=0

  words.each do |word|
    p "#{word} =>"
    wordmap = Hash.new(0)
    word.each_char {|char| wordmap[char]+=1}
    p wordmap
    wordmaps << wordmap
  end
  p wordmaps

  wordmaps.each.with_index do |wm, ind|
    (ind + 1).upto(wordmaps.length - 1) do |compare_ind|
      if wordmaps[ind].keys.sort == wordmaps[compare_ind].keys.sort
        puts "Word maps #{ind + 1} and #{compare_ind + 1} have the same set of letters:"
        result+=1
        p wordmaps[ind]
      end
    end
  end
  p result
end
similar_pairs

#MY SOLUTION #2 USE SETS {+}7min
def similar_pairs(words = ["aba","aabb","abcd","bac","aabc"])
  wordmaps=[]
  result=0

  words.each do |word|
    p "#{word} =>"
    wordmap = Hash.new(0)
    word.each_char {|char| wordmap[char]+=1}
    p wordmap
    wordmaps << wordmap
  end
  p wordmaps

  wordmaps.each.with_index do |wm, ind|
    (ind + 1).upto(wordmaps.length - 1) do |compare_ind|
      if Set.new(wordmaps[ind].keys) == Set.new(wordmaps[compare_ind].keys)
        puts "Word maps #{ind + 1} and #{compare_ind + 1} have the same set of letters:"
        result+=1
        p wordmaps[ind]
      end
    end
  end
  p result
end
similar_pairs

#MY SOLUTION #1|DEBUG PUTS REMOVED
def similar_pairs(words = ["aba","aabb","abcd","bac","aabc"])
  wordmaps=[]
  result=0

  words.each do |word|
    wordmap = Hash.new(0)
    word.each_char {|char| wordmap[char]+=1}
    wordmaps << wordmap
  end

  wordmaps.each.with_index do |wm, ind|
    (ind + 1).upto(wordmaps.length - 1) do |compare_ind|
      if wordmaps[ind].keys.sort == wordmaps[compare_ind].keys.sort
        puts "Word maps #{ind + 1} and #{compare_ind + 1} have the same set of letters:"
        result+=1
        p wordmaps[ind]
      end
    end
  end
  p result
end
