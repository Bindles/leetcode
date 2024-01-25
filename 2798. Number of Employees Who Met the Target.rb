# @param {Integer[]} hours
# @param {Integer} target
# @return {Integer}
#MY_SOLUTION => 22 seconds
a=[]
hours.each do |h|
  a << h if h >=target
end
a.size



def number_of_employees_who_met_target(hours, target)
  a=[]
      hours.each do |h|
      p h
      a << h if h >= target
      end
      a.size
end
number_of_employees_who_met_target

