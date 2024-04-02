// 3016. Minimum Number of Pushes to Type Word II
word = "abcde"
/**
 * @param {string} word
 * @return {number}
 */
var minimumPushes = function(word) {
    let cc = 0;
    let arr = []
    word = Array.from(word)
    word = word.sort();
    for(let i = 0;i<word.length;i++){
        let c = 1;
        while(word[i]==word[i+1]){
            c++
            i++
        }
        arr.push(c)
    }
    arr.sort((a,b)=>b-a);
    for(let i = 0;i<arr.length;i++){
        cc+= (1 + Math.floor(i/8))*arr[i]
    }
    return cc
};