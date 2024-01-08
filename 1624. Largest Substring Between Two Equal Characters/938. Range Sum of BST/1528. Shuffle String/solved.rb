def restore_string(s, indices)
    arr=Array.new(indices.length)
    s.each_char.with_index do |c,i|
        arr[indices[i]]=c 
    end
    return arr.join
end