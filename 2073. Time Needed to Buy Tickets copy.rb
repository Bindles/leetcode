#* 2073. Time Needed to Buy Tickets
tickets = [2,3,2]; k = 2
#* MY SOL 
def time_required_to_buy(tickets, k)
  tickets.each_with_index.sum do |ticket, i|
    [ticket, tickets[k]].min - (i > k && ticket >= tickets[k] ? 1 : 0)
  end
end
p time_required_to_buy(tickets, k) 

#*
def time_required_to_buy(tickets, k)
  seconds = 0
  tickets.each_with_index do |ticket, i|
      seconds += [ticket, tickets[k]].min
      seconds -= 1 if i > k && ticket >= tickets[k]
  end
  seconds
end
p time_required_to_buy(tickets, k) 

 #* CREDIT TO ORIGINAL SOLUTION BELOW:
def time_required_to_buy(tickets, k)
  seconds = 0
  tickets.each_with_index do |ticket, i|
      # add up seconds each person will take to buy their tickets (while kth person is still here)
      seconds += [ticket, tickets[k]].min
      
      # kth person will leave before people behind them will buy their "last" ticket
      seconds -= 1 if i > k && ticket >= tickets[k]
  end
  seconds
end
p time_required_to_buy(tickets, k) 
