#* 2073. Time Needed to Buy Tickets
tickets = [2,3,2]; k = 2
# @param {Integer[]} tickets
# @param {Integer} k
# @return {Integer}

def time_required_to_buy(ts, k)
  ts.map{ [_1,ts[k]].min }.sum - ts[k+1..].count{ _1 >= ts[k] }
end

def time_required_to_buy(tickets, k)
  n = tickets.size
  time = 0
  
  # Create a queue to represent the line
  queue = Array.new(n, 0)
  tickets.each_with_index { |t, i| queue[i] = t } 

  p queue
  
end



p time_required_to_buy(tickets, k) 

def buy_tickets_time(tickets, k)
  n = tickets.size
  time = 0
  
  queue = tickets
  
  # Simulate the process until the person at position k finishes buying tickets
  while queue[k] > 0
    # Calculate the number of tickets bought in this pass
    bought = [queue[k], 1].min
    time += bought
    
    # Subtract the bought tickets from the person at position k
    queue[k] -= bought
    
    # Move to the next person in the line
    k = (k + 1) % n
    
    # Move people forward and fill the gap left by the person who bought tickets
    queue.map! { |t| [t - bought, 0].max }
  end
  
  time
end
p time_required_to_buy(tickets, k) 

def time_required_to_buy(tickets, k)
  seconds = 0
  
  while tickets.any?(&:positive?)
    amount_of_tickets = tickets[k]
    seconds += amount_of_tickets

    # Buy tickets for person at position k
    tickets[k] = 0

    # Move to the next person in line
    k = (k + 1) % tickets.size
  end

  seconds
end
p time_required_to_buy(tickets, k) 

def time_required_to_buy(tickets, k)
  seconds = 0
  
  loop do
      amount_of_tickets = tickets[k]
      break if amount_of_tickets == 1
      
      tickets[k] -= 1
      tickets.push(tickets.shift) if tickets[k] != 0
      k = k.zero? ? tickets.size - 1 : k - 1
      seconds += 1
  end
  
  seconds
end
p time_required_to_buy(tickets, k) 
