#* 1025. Divisor Game
n = 5
# @param {Integer} n
# @return {Boolean}
#* SOL 1
def divisor_game(n)
  par = (1...n).to_a.partition.with_index {|num,index| index.even?}
  return par[0].length > par[1].length
end

#* SOL 2
def divisor_game(n)
  n.even?
end

#* SOL 1| PUTS
def divisor_game(n)
  arr = (1...n).to_a
  par = arr.partition.with_index {|num,index| index.even?}
  p par
  p par[0]
  p par[1]
  p "#{par[0].length > par[1].length}"
  return par[0].length > par[1].length
end
p divisor_game(n)