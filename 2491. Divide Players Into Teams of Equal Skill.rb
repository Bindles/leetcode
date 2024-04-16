#* 2491. Divide Players Into Teams of Equal Skill
skill = [3,2,5,1,3,4]
# @param {Integer[]} skill
# @return {Integer}
#*
def divide_players(skill)
  total = 0
  skill.sort!
  (0...skill.length / 2).each do |i|
    if skill[i] + skill[-(i + 1)] == skill[i + 1] + skill[-(i + 2)]
      total += skill[i] * skill[-(i + 1)]
    else
      return -1
    end
  end
  total
end
p divide_players(skill)

#*
def divide_players(skill)
  n=skill.size
  p totskill = skill.sum
  p teamskill = totskill / (n / 2)
  res=0

  skill.each_index do |i|
    (i+1...n).each do |j|
      p "#{skill[i]} #{skill[j]}"
      if skill[i] + skill[j] == teamskill
        res += (skill[i] * skill[j])
      end
    end
  end
  res
end
p divide_players(skill)


# SOME BUTTJOLE JS
#   let n = skill.length
#   let totskill = skill.reduce((a, b) => a + b)
#   let teamskill = totskill / (n / 2)
#   let res = 0

#   for (let i = 0; i < n; i++) {
#     for (let j = i + 1; j < n; j++) {
#       if (skill[i] + skill[j] == teamskill) {
#         res += (skill[i] * skill[j])
#       }
#     }
#   }
#   res
# end