#* 2073. Time Needed to Buy Tickets
tickets = [2,3,2]; k = 2
#* MY SOL 
def time_required_to_buy(tickets, k):
    seconds = 0
    for i, ticket in enumerate(tickets):
        seconds += min(ticket, tickets[k])
        if i > k and ticket >= tickets[k]:
            seconds -= 1
    return seconds

print(time_required_to_buy(tickets, k))

#*
def time_required_to_buy(tickets, k):
    return sum(
        min(ticket, tickets[k]) - (i > k and ticket >= tickets[k])
        for i, ticket in enumerate(tickets)
    )

print(time_required_to_buy(tickets, k))

#* compact
def time_required_to_buy(tickets, k):
    return sum(min(ticket, tickets[k]) - (i > k and ticket >= tickets[k]) for i, ticket in enumerate(tickets))

print(time_required_to_buy(tickets, k))

