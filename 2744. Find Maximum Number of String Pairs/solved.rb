
def maximum_number_of_string_pairs(words)
    words_hash = {}
    words.each do |w|
        if w[0] != w[1]
            words_hash[w] = true
        end
    end

def maximum_number_of_string_pairs(words)
    cnt = 0
    words[...-1].each_with_index{|pair,i|
        cnt+=1 if words[i+1..].include?(pair.reverse)
    }
    cnt
end