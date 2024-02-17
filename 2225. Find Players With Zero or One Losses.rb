#SOL 1st WORKS
def find_winners(matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]])
  winners = matches.map(&:first).uniq
  losses = matches.map(&:last).group_by(&:itself).transform_values(&:size)

  zero_loss_players = winners.reject { |winner| losses[winner] }
  one_loss_players = losses.select { |_, count| count == 1 }.keys

  p [zero_loss_players.sort, one_loss_players.sort]
end
# Test the method
find_winners


def find_winners(matches)
  ws, ls = matches.transpose
  inv = (ws - ls).uniq
  l1 = ls.tally.filter_map{|x,c| x if c == 1 }
  [inv, l1].map(&:sort)
end

# @param {Integer[][]} matches
# @return {Integer[][]}
def find_winners(a)
  a.transpose.then{|w,l| [w&w-l, l.tally.reject{1<_2}.keys] }.map(&:sort)
end


# @param {Integer[][]} matches
# @return {Integer[][]}
def find_winners(matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]])
  p matches.transpose.each {p "hi", _1.select{|x| x}}
end

p find_winners

