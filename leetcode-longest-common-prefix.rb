# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
a=[]
b=0
c=0

    while c<strs[0].size
        if (strs[0][c] == strs[1][c] && strs[1][c] == strs[2][c])
            #puts strs[0][c]
            a << strs[0][c]
            c+=1
        else
            break
        end
    end
    p a.join
    return a.join

end


# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
a=[]
b=0
c=0
d=(0..2)
    while (c<strs[0].length && c<strs[1].length && c<strs[2].length)
        if (strs[0][c] == strs[1][c] && strs[1][c] == strs[2][c])
            #puts strs[0][c]
            a << strs[0][c]
            c+=1
        else
            break
        end
    end
    p a.join
    return a.join

end




# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.empty?

  result = ''
  idx = 0

  while idx < strs[0].length
    current_char = strs[0][idx]

    if strs.all? { |s| s[idx] == current_char }
      result += current_char
      idx += 1
    else
      break
    end
  end

  result
end

# Example usage
strs = ["flower", "flow", "flight"]
puts longest_common_prefix(strs)
