# @param {Integer[]} tokens
# @param {Integer} power
# @return {Integer}
#*SOL 2
def bag_of_tokens_score(tokens = [100,200,300,400], power = 200)
  score = 0
  max = 0
  tokens.sort!
  while tokens.any? && power >= tokens.first
    power -= tokens.shift
    score += 1
    max = score if score > max

    if tokens.any? && power < tokens.first && score > 0
      power += tokens.pop
      score -= 1
    end
  
  end
  max
end
p bag_of_tokens_score

#*SOL 3
def bag_of_tokens_score(tokens = [100,200,300,400], power = 200)
    max = score = 0
    tokens.sort!.size.times do
        if power >= tokens.first
            power -= tokens.shift
            max = [max, score += 1].max
        else 
			return max if score.zero?   # We aren't allowed to have negative score.
            power += tokens.pop
            score -= 1
        end
    end
    max
end
p bag_of_tokens_score

#*SOL 3.5 | ONELINER
def bag_of_tokens_score(tokens = [100,200,300,400], power = 200)
    score = 0 and tokens.sort!.size.times.map { power >= tokens[0] ? (power -= tokens.shift)*0 + score += 1 : ( power += score>0 ? tokens.pop : 0 )*0 + score -= 1 }.push(0).max
end
p bag_of_tokens_score