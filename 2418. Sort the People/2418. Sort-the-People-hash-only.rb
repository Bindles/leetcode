# @param {String[]} names
# @param {Integer[]} heights
# @return {String[]}
#HASH=>DONT CONVERT TO ARRAY
#MY_SOLUTION_2
def sort_people(names = ["Alice","Bob","Bob", "Bob"], heights = [155,185,150, 1])
  resultarr=[]
  ii="~"
    myhashz={}

    names.each.with_index do |name, i|
      if !myhashz[name]
      myhashz[name] = heights[i]
      else
      myhashz[name+ii] = heights[i]
      ii+="~"
      end
    end

    # sort hash by values in key=>value and convert it to a hash again
    sorted_hash = Hash[myhashz.sort_by { |_key, v| v }.reverse]

    sorted_hash.each_key {|key|resultarr << key}
    p resultarr.map {|nametrim| nametrim.gsub("~", "")}

end
p sort_people
p '------------'

def sort_people(names = ["Alice","Bob","Bob", "Bob"], heights = [155,185,150, 1])
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
p sort_people