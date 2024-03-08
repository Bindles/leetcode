function binarySearch(arr, target) {
  let low = 0, high = arr.length - 1;

  while (low <= high) {
    const mid = low + Math.floor((high - low) / 2);
    if (arr[mid] === target) return mid;
    if (arr[mid] < target) low = mid + 1;
    else high = mid - 1;
  }

  return -1;
}

// Example usage:
const arr = [1, 7, 8, 12, 14, 22, 28, 35, 41];
const target = 12;
console.log(binarySearch(arr, target)); // Output: 3 (index of the target element)

function bsearch(arr,target){
  let low=0;
  let high=arr.length-1;

  while (low <= high) {
    const mid=low+Math.floor((high-low)/2);
    if (arr[mid]===target) return mid;
    if (arr[mid]<target) low=mid+1;
    else high=mid-1;
  }
  return -1
}
console.log(binarySearch(arr, target)); // Output: 3 (index of the target element)
