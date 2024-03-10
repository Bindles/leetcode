#*2418. Sort the People
# @param {String[]} names
# @param {Integer[]} heights
# @return {String[]}
names = ["Alice","Bob","Bob"]
heights = [155,185,150]
#*MY ACTUAL SOL 1 => better var names => reverse => sort instead of sort_by
def sort_people(names, heights)
  names.zip(heights).sort_by{ |k,v| -v}.map{|k,v| k}
end
p sort_people(names, heights)
def sort_people(names, heights)
  names.zip(heights).sort_by {|name,height| -height}.map { |name, height| name}
end
def sort_people(names, heights)
  names.zip(heights).sort_by{|name, height| height}.reverse.map{|name, height|name}
end
def sort_people(names, heights)
  heights.zip(names).sort.reverse.map{ |pair| pair[1] }
end
#*MORE CONCISE AND POSSIBLY MORE OPTIMIZED
def sort_people(names, heights)
  names.sort_by.with_index {|_, i|-heights[i]}
end
def sort_people(names, heights)
  names.sort_by.with_index { |_, i| heights[i] }.reverse
end

#*MOR SOLUTIONS
def sort_people(names, heights)
    height_name = heights.zip(names).to_h
    height_name.sort_by { |key, value| -key }.to_h.values
end

def sort_people(names, heights)
  arr = names.zip(heights)
  sort = arr.sort_by {|name, height| -height}
  result = sort.map {|name| name[0]}
end


#* LEARN => ZIP
arr=[1,2,3]
array=[11,12,13]
p arr.zip(array)

names = ["Mary", "John", "Emma"]
heights = [180, 165, 170]

p names.zip(heights).sort_by{ |k,v| -v}



