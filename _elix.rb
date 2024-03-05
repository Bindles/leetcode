def main do
  memberships = {:bronze, :silver}
  memberships = Tuple.append(memberships, :gold)
  IO.inspect(memberships)

  prices = {5,10,15}
  avg=Tuple.sum(prices) / tuple_size(prices)
  IO.puts(avg)

  IO.puts("Avg price from #{elem(memberships, 0)} #{elem(memberships, 0)} #{elem(memberships, 0)} is #{avg}")

  user1= {"Caleb", :gold}
  user1= {"Kayla", :gold}
  user1= {"Alexis", :silver}

  # users= [
  #   {"Caleb", :gold}
  #   {"Kayla", :gold}
  #   {"Alexis", :silver}
  # ]

  # Enum.each(users, fn {name, membership} ->
  #    IO.puts("#{name} has a #{membership} membership")
  # end)

  {name, membership} = user1

  IO.puts("User #{name} is #{membership}"))
end