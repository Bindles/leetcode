// 215. Kth Largest Element in an Array
// nums = [3,2,1,5,6,4]
// k = 2
nums = [3,2,3,1,2,4,5,5,6]
k = 4
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
//SOL 2
var findKthLargest = function(nums, k) {
  nums.sort((a, b) => b - a);
  return nums[k-1];
}

//SOL 3
var findKthLargest = function(nums, k) {
  return Math.min(...nums.sort((a, b) => b - a).slice(0, k));
}

// SOL 1 | FAST IN JS
var findKthLargest = function(nums, k) {
  const heap = [];
  for (let i = 0; i < k; i++) {
      heap.push(nums[i]);
      heapifyUp(heap, heap.length - 1);
  }

  for (let i = k; i < nums.length; i++) {
      if (nums[i] > heap[0]) {
          heap[0] = nums[i];
          heapifyDown(heap, 0);
      }
  }

  return heap[0];
}

function heapifyUp(heap, index) {
  while (index > 0) {
      const parentIndex = Math.floor((index - 1) / 2);
      if (heap[index] < heap[parentIndex]) {
          [heap[index], heap[parentIndex]] = [heap[parentIndex], heap[index]];
          index = parentIndex;
      } else {
          break;
      }
  }
}

function heapifyDown(heap, index) {
  const size = heap.length;
  while (index < size) {
      let leftChildIndex = 2 * index + 1;
      let rightChildIndex = 2 * index + 2;
      let smallestIndex = index;

      if (leftChildIndex < size && heap[leftChildIndex] < heap[smallestIndex]) {
          smallestIndex = leftChildIndex;
      }
      if (rightChildIndex < size && heap[rightChildIndex] < heap[smallestIndex]) {
          smallestIndex = rightChildIndex;
      }

      if (smallestIndex !== index) {
          [heap[index], heap[smallestIndex]] = [heap[smallestIndex], heap[index]];
          index = smallestIndex;
      } else {
          break;
      }
  }
}