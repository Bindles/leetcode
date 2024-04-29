// 283. Move Zeroes
nums = [0,1,0,3,12]
/**
 * @param {number[]} nums
 * @return {void} Do not return anything, modify nums in-place instead.
 */
//SOL 2.1 | forEach
var moveZeroes = function(nums) {
    c=0
    nums.forEach(num => {
        if (num !== 0) {
            nums[c] = num;
            c++;
        }
    });
    for (; c < nums.length; c++) {
        nums[c] = 0
    }
};

//SOL 2.0
var moveZeroes = function(nums) {
    c=0
    for (let i=0; i<nums.length; i++) {
        if (nums[i] !== 0) {
            nums[c] = nums[i]
            c+=1
        }
    }
    for (; c < nums.length; c++) {
        nums[c] = 0
    }
};

// SOL 1 | ORIGINAL
var moveZeroes = function(nums) {
    i=0
    for (let j=0; j<nums.length; j++){
        if (nums[j] !== 0) {
            [nums[i], nums[j]] = [nums[j], nums[i]]
            i++
        }
    }
};