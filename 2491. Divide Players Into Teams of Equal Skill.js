// 2491. Divide Players Into Teams of Equal Skill
skill = [3,2,5,1,3,4]
/**
 * @param {number[]} skill
 * @return {number}
 */
//MY SOL
var dividePlayers = function(skill) {
  let n = skill.length;
  let result = 0;
  skill.sort((a,b)=>{return a - b});
  for (let i = 0, j = 0; i < n / 2; i++){
      if (skill[i] + skill[n - (i+1)] === skill[i +1] + skill[n - (i+2)] ){
          result += skill[i] * skill[n - (i+1)];
      }else {
          return -1
      }
  }
  return result
};
console.log(dividePlayers(skill))

//WORKING
var dividePlayers = function(skill) {
  let n = skill.length
  let totskill = skill.reduce((a, b) => a + b)
  let teamskill = totskill / (n / 2)
  let res = 0

  for (let i = 0; i < n; i++) {
    for (let j = i + 1; j < n; j++) {
      if (skill[i] + skill[j] == teamskill) {
        res += (skill[i] * skill[j])
      }
    }
  }
  return result
};
console.log(dividePlayers(skill))
