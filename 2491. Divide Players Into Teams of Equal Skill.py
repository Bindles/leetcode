#PYTHON
#* 2491. Divide Players Into Teams of Equal Skill
skill = [3,2,5,1,3,4]
# @param {Integer[]} skill
# @return {Integer}
#*
def dividePlayers(skill):
  n=len(skill)
  skill.sort()
  total=0
  for i in range(0, (n // 2)):
      if skill[i]+skill[n-1-i]==skill[i+1]+skill[n-2-i]:
          total+=skill[i]*skill[n-1-i]
      else:
          return -1   
  return total

print(dividePlayers(skill))