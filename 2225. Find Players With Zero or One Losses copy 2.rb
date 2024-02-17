def find_winners(matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]])
  ws, ls = matches.transpose
  p inv = (ws - ls).uniq
  p l1 = ls.tally.filter_map{|x,c| x if c == 1 }
  p [inv, l1].map(&:sort)
end

def find_winners(matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]])
  ws, ls = matches.transpose
  p inv = (ws - ls).uniq
  p l1 = ls.tally.filter_map{|x,c| x if c == 1 }
  p [inv, l1].map(&:sort)
end
p find_winners

# @param {Integer[][]} matches
# @return {Integer[][]}
def find_winners(matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]])
  matches.transpose.then{|w,l| [w&w-l, l.tally.reject{1<_2}.keys] }.map(&:sort)
end


# @param {Integer[][]} matches
# @return {Integer[][]}
def find_winners(matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]])
  p matches.transpose.each {p "hi", _1.select{|x| x.count == 1}}
end



def find_winners(matches)
  winners = matches.map(&:first).uniq
  losers = matches.map(&:last)

  zero_loss_players = winners.reject do |winner|
    losers.include?(winner)
  end

  loss_counts = losers.tally
  one_loss_players = loss_counts.select do |player, count|
    count == 1
  end.keys

  [zero_loss_players.sort, one_loss_players.sort]
end

# Test the method
matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]]
puts find_winners(matches).inspect


