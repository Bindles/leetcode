// 2678. Number of Senior Citizens
details = ["7868190130M7522","5303914400F9211","9273338290F4010"]
//SOL 
var countSeniors = function(details) {
    let res=0;
    for(num of details) {
         if (parseInt(num.slice(11, 13)) > 60) res++
    }
    return res
}
console.log(countSeniors(details))
