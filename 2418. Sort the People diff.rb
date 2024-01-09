# @param {String[]} names
# @param {Integer[]} heights
# @return {String[]}
def sort_people(names = ["Mary","John","Emma"], heights = [180,165,170])
    p "john emma mary"
    heights_sort = heights.sort
    p names
    p heights
    p heights_sort
    namer = []

    heights.each.with_index do |h,index|
      0..names.length.times do | a|
      p "#{h} at #{index} #{heights_sort[a]} at #{a} , #{index} => #{a} zz #{names[a]}=> #{names[index]}"  if h == heights_sort[a]
        namer[a] = names[index] if h == heights_sort[a]
      end
    end
    p namer
    p heights.sort
    p namer.reverse
end

sort_people