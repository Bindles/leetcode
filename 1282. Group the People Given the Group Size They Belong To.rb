# @param {Integer[]} group_sizes
# @return {Integer[][]}
#* HELL YES
  def group_the_people(group_sizes = [3, 3, 3, 3, 3, 1, 3])
    group_sizes.zip(0..).group_by(&:first).map{|group,indices| indices.transpose.last.each_slice(group).to_a}.sum([])
  end

p group_the_people