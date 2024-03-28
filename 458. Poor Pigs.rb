#* 458. Poor Pigs
buckets = 4; minutes_to_die = 15; minutes_to_test = 15
# @param {Integer} buckets
# @param {Integer} minutes_to_die
# @param {Integer} minutes_to_test
# @return {Integer}
#* MY SOL
def poor_pigs(buckets, minutes_to_die, minutes_to_test)
  pigs=0
  pigs+=1 while (minutes_to_test / minutes_to_die + 1) ** pigs < buckets
  pigs
end
p poor_pigs(buckets, minutes_to_die, minutes_to_test)