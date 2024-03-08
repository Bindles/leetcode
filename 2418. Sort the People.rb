#*2418. Sort the People
# @param {String[]} names
# @param {Integer[]} heights
# @return {String[]}
def sort_people(names, heights)
  names.sort_by.with_index {|_, i|-heights[i]}
end
def sort_people(names, heights)
  names.sort_by.with_index { |_, i| heights[i] }.reverse
end

def sort_people(names, heights)
  heights.zip(names).sort.reverse.map{ |pair| pair[1] }
end

def sort_people(names, heights)
    names.zip(heights).sort_by{|name, height| height}.reverse.map{|name, height|name}
end
def sort_people(names, heights)
    names.zip(heights).sort_by {|name,height| -height}.map { |name, height| name}
end

def sort_people(names, heights)
    height_name = heights.zip(names).to_h
    height_name.sort_by { |key, value| -key }.to_h.values
end


def sort_people(names, heights)
  arr = names.zip(heights)
  sort = arr.sort_by {|name, height| -height}
  result = sort.map {|name| name[0]}
end



