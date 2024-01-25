# @param {Integer[]} hours
# @param {Integer} target
# @return {Integer}

#MY_SOLUTION => 22 seconds
def number_of_employees_who_met_target(hours = [0,1,2,3,4], target = 2)
  a=[]
  hours.each do |h|
    p h
    a << h if h >= target
  end
  a.size
end
p number_of_employees_who_met_target

#CONCISE
def number_of_employees_who_met_target(hours = [0,1,2,3,4], target = 2)
  a=[];hours.each {|h|a << h if h >= target} && a.size
end
p number_of_employees_who_met_target


#SELECT_BETTER
def number_of_employees_who_met_target(hours = [0,1,2,3,4], target = 2)
  hours.select do |h|
    h >= target
  end.size
end
p number_of_employees_who_met_target

#SELECT=>CONCISE
def number_of_employees_who_met_target(hours = [0,1,2,3,4], target = 2)
  hours.select {|hour|hour>=target}.size
end

