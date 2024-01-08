def truncate_sentence(s, k)
    z=[]
    spaces=0
    s.each_char do |ss|
        spaces+=1 if ss == " "
        return z.join('') if spaces >= k
        z << ss
    end
end