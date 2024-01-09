# @param {String[]} names
# @param {Integer[]} heights
# @return {String[]}
def sort_people(names = ["Mary","John","Emma"], heights = [180,165,170])
    myhasha={a: 1, b: 2, c: 1}
    p myhasha.sort
    myhasha.clear

    names.each.with_index do |name, i|
      myhasha[name] = heights[i]
    end
    p myhasha

   # Convert the hash to an array of key-value pairs and sort by values
   sorted_array = myhasha.to_a.sort { |a, b| a[1] <=> b[1] }
   # NO ARRAY (also remove next line)=> sorted_hash = Hash[myhasha.sort_by { |_, v| v }]
   # Convert the sorted array back to a hash remokve if no array
  sorted_hash = Hash[sorted_array]

  p sorted_hash
end

p sort_people

def sort_peoplez(names = ["Alice","Bob","Bob", "Bob"], heights = [155,185,150, 1])
  resultarr=[]
  ii="~"
    myhashz={a: 1, b: 2, c: 1}
    p myhashz.sort
    myhashz.clear

    names.each.with_index do |name, i|
      p name
      if !myhashz[name]
      myhashz[name] = heights[i]
      else
      myhashz[name+ii] = heights[i]
      ii+="~"
      end
    end
    p myhashz

    # sort hash by values in key=>value and convert it to a hash again
    sorted_hash = Hash[myhashz.sort_by { |_key, v| v }.reverse]

    p sorted_hash
    sorted_hash.each_key {|key|resultarr << key}
    p resultarr.map {|nametrim| nametrim.gsub("~", "")}

end

p sort_peoplez