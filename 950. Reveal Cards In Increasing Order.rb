#* 950. Reveal Cards In Increasing Order
deck = [17,13,11,2,3,5,7]
# @param {Integer[]} deck
# @return {Integer[]}
#* MY SOL 3
def deck_revealed_increasing(deck)
  deck.sort!.reverse!
  result = []
  deck.each do |card|
    result.unshift(result.pop) unless result.empty?
    result.unshift(card)
  end
  result
end
p deck_revealed_increasing(deck)

#* WORKING . . .
#* SOL 1
def deck_revealed_increasing(deck)
  res=[]
  skip=0
  p sd =  deck.sort
  sd.each.with_index do |num, ind|
    if ind*2 <= deck.size
      res[ind*2] = num
    end
  end
  res
end
p deck_revealed_increasing(deck)

def deck_revealed_increasing(deck)
  res = []
  skip = 0
  sd = deck.sort

  sd.each_with_index do |num, ind|
    if ind * 2 <= deck.size
      res[ind * 2] = num
    else
      res[(ind * 2 - deck.size) * 2 + 1] = num
    end
  end

  res.compact
end
p deck_revealed_increasing(deck)
#* . . . . . . . . . . . . . . .
