# @param {Integer[]} costs
# @param {Integer} coins
# @return {Integer}

#MY SOL 1
def max_ice_cream(costs = [1,3,2,4,1], coins = 17) 
  costs.sort!.reduce(0) {|a,num| (coins -= num) >= 0 and a + 1 or break a }
end


# MY SOL 2
def max_ice_cream(costs = [1,3,2,4,1], coins = 7)
  costs.sort!.count {|n| (coins -= n) >= 0 }
end



#**WORKING*****
#WORKING | DOESNT WORK BELOW...
def max_ice_cream(costs = [1,3,2,4,1], coins = 17) 
  costs.sort!.reduce(0) {|a,num| a <= coins and a + 1 or break a }
end

def max_ice_cream(costs = [1,3,2,4,1], coins = 17)
  steps=0
    p costs.sort!
    costs.reduce{ |a,num| a + num; a <= coins ? (p a + num; steps+=1) : a}
    return steps
end

def max_ice_cream(costs = [1,3,2,4,1], coins = 17)
  steps=0
    p costs.sort!
    costs.reduce(0){ |a,num| a + num; a <= coins ? (p a + num; steps+=1) : a}
    return steps
end

def max_ice_cream(costs = [1,3,2,4,1], coins = 17)
  steps = 0
  total_cost = costs.reduce(0) do |sum, num|
    sum += num
    if sum <= coins
      steps += 1
    else
      break
    end
    sum
  end
  return steps
end

def max_ice_cream(costs = [1,3,2,4,1], coins = 17)
  steps = 0
  total_cost = costs.reduce(0) do |sum, num|
    sum += num
    sum <= coins ? (steps += 1) : break
    sum
  end
  return steps
end

def max_ice_cream(costs = [1,3,2,4,1], coins = 17)
  steps = 0
  costs.reduce(0) do |sum, num|
    sum <= coins ? (steps += 1) : break
  end
  return steps
end
#*******************