# @param {Integer} main_tank
# @param {Integer} additional_tank
# @return {Integer}

#MY_SOLUTION_CLEAN: | UNTIL
def distance_traveled(main_tank, additional_tank)
  dist = main_tank * 10
  until main_tank < 5 || additional_tank < 1
    main_tank -= 4
    additional_tank -= 1
    dist +=10
  end
  return dist
end

#MY SOL | NO PUTS
def distance_traveled(main_tank, additional_tank)
  dist = main_tank * 10
  while main_tank >= 5 && additional_tank >= 1
    main_tank -= 4
    additional_tank -= 1
    dist +=10
  end
  return dist
end
  
  
#WORKING...
#FAILURE
def distance_traveled(main_tank, additional_tank)
  dist = 0 
  ex_dist = 0
  p ex_dist = main_tank / 5 * 10 if additional_tank >= (main_tank / 5 )
  p dist = main_tank * 10
  dist + ex_dist
end

#PIVOT ABOVE
def distance_traveled(mainTank = 5, additionalTank = 10)
  extra = false
  p exDist = mainTank / 5 * 10
  p dist = mainTank * 10
  dist + exDist
end

#SOLVED
def distance_traveled(main_tank = 5, additional_tank = 10)
dist = 0 
ex_dist = 0
#p ex_dist = main_tank / 5 * 10 if additional_tank >= (main_tank / 5 )
p dist = main_tank * 10
#dist + ex_dist
while main_tank >= 5 && additional_tank >= 1
  main_tank -= 4
  additional_tank -= 1
  dist +=10
end
return dist
end
p distance_traveled
