# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
a=0
b=[]
    for word in words
      if chars.each_char.all? {|char| word.include?(char)}
       p word
      end
    end

end


count_characters(["cat","bt","hat","tree"], "atach")
