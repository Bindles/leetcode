def compound_interest(principal, rate, compounding_frequency, time)
  n = compounding_frequency
  r = rate / 100.0
  t = time

  principal * (1 + r / n)**(n * t)
end

principal = 1000  # Initial deposit
rate = 5.25       # Annual interest rate
compounding_frequency = 1  # Monthly compounding
time = 1           # 1 year

future_value = compound_interest(principal, rate, compounding_frequency, time)
puts "Future Value: $#{future_value.round(2)}"