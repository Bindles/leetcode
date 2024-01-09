# @param {String[]} words
# @return {Integer}
#MY SOLUTION 22mins
def similar_pairs(words = ["aba","aabb","abcd","bac","aabc"])
  wordmaps=[]
  result=0

  words.each do |word|
    p word, "=>"
    wordmap = Hash.new(0)
    word.each_char {|char| wordmap[char]+=1}
    p wordmap
    wordmaps << wordmap
  end
  p wordmaps[1]

  wordmaps.each.with_index do |wm, ind|
    # Compare each word map with subsequent word maps
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

def similar_pairs1(words = ["aba","aabb","abcd","bac","aabc"])
  wordmaps=[]

  words.each do |word|
    p word, "=>"
    wordmap = Hash.new(0)
    word.each_char {|char| wordmap[char]+=1}
    p wordmap
    wordmaps << wordmap
  end
  p wordmaps[1]

  wordmaps.each.with_index(1) do |wm, ind|

  end

end

