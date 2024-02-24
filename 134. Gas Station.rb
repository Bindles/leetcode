# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}
#*MY SOL 1
def can_complete_circuit(gas = [1,2,3,4,5], cost = [3,4,5,1,2])
    current_balance = 0
    minimum_balance = 0
    min_index = 0
    
    gas.each_with_index do |gas_amount, index|
        current_balance += gas_amount - cost[index]

        if current_balance < minimum_balance
            minimum_balance = current_balance
            min_index = index + 1
        end
    end
    current_balance < 0 ? -1 : min_index
end
p can_complete_circuit

#*NY SOL 1.5 | OPTIMIZED WITH OTHERS SUBMISSIONS
def can_complete_circuit(gas, cost)
  return -1 if gas.sum < cost.sum
  current_bal=0
  min_bal=0 
  min_index=0
  gas.each_with_index do |g, i|
    next unless (current_bal += g - cost[i]) < min_bal
    min_bal, min_index = current_bal, i + 1
  end
  min_index
end

#*A SOL
def can_complete_circuit(gas, cost)
    return -1 if gas.sum < cost.sum
    total = 0
    start = 0
    (0...gas.length).each do |i|
        total += gas[i]-cost[i]
        if total < 0
            total = 0
            start = i (+1)
        end
    end
    start
end



