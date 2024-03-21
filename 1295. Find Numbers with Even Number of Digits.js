// 1295. Find Numbers with Even Number of Digits
nums = [12,345,2,6,7896]
function findNumbers(nums) {
    return nums.filter(num => num.toString().length % 2 === 0).length;
}

console.log(findNumbers(nums)); // Output: 2
