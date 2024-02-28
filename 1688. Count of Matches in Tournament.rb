# @param {Integer} n
# @return {Integer}
#*SOL 1
def number_of_matches(n = 14)
  matches = 0
  total=0
  while n > 1
    p n
    p matches = n / 2
    n = n - matches
    total +=matches
  end
  p total
end
p number_of_matches

#*SOL 2
def number_of_matches(n=14)
  matches = 0
  while n > 1
      matches += 1 if n.odd?
      n = n/2
      matches += n  
  end
  p matches
end

#*SOL 3
def number_of_matches(n=14)
  return 0 if n == 1
  if n.even?
      n/2+number_of_matches(n/2)
  else
      ((n-1)/2) + number_of_matches(((n-1)/2)+1)
  end
end
p number_of_matches

#*SOL 3.5 | concise
def number_of_matches(n=14)
  return 0 if n == 1
  n.even? ? n/2+number_of_matches(n/2) : ((n-1)/2) + number_of_matches(((n-1)/2)+1)
end
p number_of_matches


#*AFTER, PLAYING AROUND
p 'trying to combine, doesnt work w.o odd?'
def number_of_matches(n = 14)
  matches = 0
  total=0
  while n > 1
    p n
    p matches = n / 2
    n = n/2
    matches+=n
  end
  p matches
end