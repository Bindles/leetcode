# @param {Integer[][]} items1
# @param {Integer[][]} items2
# @return {Integer[][]}

#MY SOL 1 | CONCISE
def merge_similar_items(items1 = [[1,1],[4,5],[3,8]], items2 = [[3,1],[1,5]])
  (items1+items2).group_by{|i|i[0]}.map{|key,group|[key, group.transpose[1].sum]}.sort_by{_1[0]}
end
p merge_similar_items

#MY SOL 1 | CLEANED
def merge_similar_items(items1 = [[1,1],[4,5],[3,8]], items2 = [[3,1],[1,5]])
  items1.concat(items2)
                                .group_by { |item| item[0] }
                                .map { |key, group| [key, group.transpose[1].sum] }
                                .sort_by {|it| it[0] }
end
p merge_similar_items

#MY SOL 1 | FIRST FINAL VERSION
def merge_similar_items(items1 = [[1,1],[4,5],[3,8]], items2 = [[3,1],[1,5]])
  (items1+items2).group_by{|i|i[0]}.map{|key,group| sum = group.transpose[1].sum; [key, sum]}.sort_by {_1[0]}
end
p merge_similar_items


#SOLUTION 2 | BLINDLY COPY HASH SOLUTION:
def merge_similar_items(items1 = [[1,1],[4,5],[3,8]], items2 = [[3,1],[1,5]])
  hash = Hash.new(0)
  (items1 + items2).each{|key, value| hash[key] += value}
  hash.sort
end
p merge_similar_items


#SOLUTION 2 | CONCISE:
def merge_similar_items(items1 = [[1,1],[4,5],[3,8]], items2 = [[3,1],[1,5]])
  (items1 + items2).each_with_object(Hash.new(0)) {|(key, value), hash| hash[key] += value}.sort
end
p merge_similar_items




#WORKING FINAL
def merge_similar_items(items1 = [[1,1],[4,5],[3,8]], items2 = [[3,1],[1,5]])
  p items1.map.with_index {|i,ind| [i,ind]}
  p items1.zip(items2)
  p items1.concat(items2)
  # p items1.group_by { |i| i[0]}.each { p _1, _1[1].transpose.map(&:sum) }
  # p items1.group_by { |i| i[0]}.each { p _1, _1[1].transpose[1].sum }
  #FINALLY GOT IT
  p items1.group_by { |i| i[0]}.map{|k,group| sumz = group.transpose[1].sum; [k, sumz]}
  #CHG SORT
  p items1.group_by { |i| i[0]}.map{|k,group| sumz = group.transpose[1].sum; [k, sumz]}.sort_by {_1[0]}
  #p items1.group_by { |i| i[0]}.each { p _1, _1[1].transpose.map{|i,ii| ii} }
  #p 'a'
  #p items1.group_by { |i| i[0]}.map{ |sub_array| sub_array[1][0] }
  #p items1.group_by { |i| i[0]}.select { _1[1] }

end

#WORKING PRE
def merge_similar_items(items1 = [[1,1],[4,5],[3,8]], items2 = [[3,1],[1,5]])
    p items1.map.with_index {|i,ind| [i,ind]}
    p items1.zip(items2)
    p items1.concat(items2)
    # p items1.group_by { |i| i[0]}.each { p _1, _1[1].transpose.map(&:sum) }
    # p items1.group_by { |i| i[0]}.each { p _1, _1[1].transpose[1].sum }
    p items1.group_by { |i| i[0]}.each { p _1, _1[1].map{|k,group| sumz = group.transpose[1].sum; [k, sumz]} }
    #p items1.group_by { |i| i[0]}.each { p _1, _1[1].transpose.map{|i,ii| ii} }
    #p 'a'
    #p items1.group_by { |i| i[0]}.map{ |sub_array| sub_array[1][0] }
    #p items1.group_by { |i| i[0]}.select { _1[1] }

end

#WORKED OUT LONG
def merge_similar_items(items1 = [[1,1],[4,5],[3,8]], items2 = [[3,1],[1,5]])
  merged_items = items1.concat(items2)
  grouped_items = merged_items.group_by { |item| item[0] }
  
  merged_grouped_items = grouped_items.map do |key, group|
      sum_of_second_numbers = group.transpose[1].sum
      [key, sum_of_second_numbers]
  end
  p merged_grouped_items
end













