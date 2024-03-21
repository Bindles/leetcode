#* 2391. Minimum Amount of Time to Collect Garbage
garbage = ["G","P","GP","GG"]
travel = [2,4,3]
# @param {String[]} garbage
# @param {Integer[]} travel
# @return {Integer}
#* MY SOL
def garbage_collection(garbage, travel)
    ['G', 'P', 'M'].sum do |char|
      index = garbage.rindex { |garb| garb.include?(char) } || 0
      travel.first(index).sum
    end + garbage.join.size
end
p garbage_collection(garbage, travel)

#* CONCISE LOL
def garbage_collection(garbage, travel)
    ['G', 'P', 'M'].sum { |char| index = garbage.rindex { |garb| garb.include?(char) } || 0;travel.first(index).sum } + garbage.join.size
end
p garbage_collection(garbage, travel)


#* INTERESTING SOL
#*
def garbage_collection(garbage, travel)
    minutes = 0

    ["G","P","M"].each do |type|
        reversed_index = garbage.reverse.find_index { |house| house.include?(type) }
        next unless reversed_index

        index = garbage.size - reversed_index - 1

        minutes += travel[...index].sum
        minutes += garbage.map { |g| g.count(type) }.sum
    end
    minutes
end


#* WORKING.....
#*
def garbage_collection(garbage, travel)
    mins=0
    garbage.each.with_index do |g,i|
    if g.include?("P")
        p g
        mins+=1
        mins+=travel[i-1]
    end
    end
    garbage.each.with_index do |g,i|
    if g.include?("G")
        p g
        mins+=1
        mins+=travel[i-1]
    end
    end
    garbage.each.with_index do |g,i|
    if g.include?("M")
        p g
        mins+=1
        mins+=travel[i-1]
    end
    end
    mins
end
p garbage_collection(garbage, travel)

#*SUM
#*
def garbage_collection(garbage, travel)
    garbage.each.with_index.sum do |g, i|
      g.include?("P") ? 1 + (travel[i - 1] || 0) : 0
    end
end
#*
def garbage_collection(garbage, travel)
    garbage.each.with_index.sum do |g, i|
      if g.include?("P")
        minutes = 1
        minutes += travel[i - 1] if i > 0 && travel[i - 1]
        minutes*10
      else
        0
      end
    end
end  
p garbage_collection(garbage, travel)

#* TEST
s = [10, 20, 5, 30, 15]
res = s.sum { |ss| ss > 15 ? 1 : 0 }
puts res