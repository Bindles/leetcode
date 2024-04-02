// 2120. Execution of All Suffix Instructions Staying in a Grid
n = 3; startPos = [0,1]; s = "RRDDLU"
/**
 * @param {number} n
 * @param {number[]} startPos
 * @param {string} s
 * @return {number[]}
 */
var executeInstructions = function(n, startPos, s) {
    let answers = []; 
    for (i = 0; i < s.length; i++) { 
        let movement = 0;
        let [row, col] = startPos;
        for (j = i; j < s.length; j++) { 
            if (s[j] == "R") col++;
            else if (s[j] == "L") col--;
            else if (s[j] == "D") row++;
            else row--;
            if(row>n-1 || col > n-1 || row < 0 || col < 0) {
                break;
            }
            movement++;
        }
        answers[i] = movement;
    }
    return answers;
};
console.log(executeInstructions(n, startPos, s))