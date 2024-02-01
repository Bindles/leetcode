function divideArray(nums = [1,3,4,8,7,9,3,5,1], k = 2) {
  nums.sort((a, b) => a - b);
  const splittimes = Math.floor(nums.length / 3);
  let incz = 0;
  let arr = [];

  for (let i = 0; i < splittimes; i++) {
    arr.push(nums.slice(incz, incz + 3));
    incz += 3;
  }

  const correctArrayAmount = arr.filter(subarray => {
    const max = Math.max(...subarray);
    const min = Math.min(...subarray);
    return max - min <= k;
  }).length;

  return correctArrayAmount === splittimes ? arr : [];
}

