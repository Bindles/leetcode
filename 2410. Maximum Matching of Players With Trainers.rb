#* 2410. Maximum Matching of Players With Trainers
players = [4,7,9]
trainers = [8,2,5,8]
# @param {Integer[]} players
# @param {Integer[]} trainers
# @return {Integer}
#* MY SOL 1 
def match_players_and_trainers(players, trainers)
  total = 0
  players.sort!
  trainers.sort!
  start = trainers.length - 1
  players.reverse_each do |i|
    if start >= 0 && i <= trainers[start]
      start -= 1
      total += 1
    end
  end
  total
end
p match_players_and_trainers(players, trainers)

#* MY SOL 2 
def match_players_and_trainers(players, trainers)
  players.sort!.reverse!
  trainers.sort!.reverse!
  total = 0
  while trainers.any? && players.any?
    if trainers.last >= players.last
      total += 1
      players.pop
    end
    trainers.pop
  end
  total
end
p match_players_and_trainers(players, trainers)

