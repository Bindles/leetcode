#PYTHON
#* 215. Kth Largest Element in an Array
# nums = [3,2,1,5,6,4]
# k = 2
nums = [3,2,3,1,2,4,5,5,6]
k = 4
from typing import List

#*
class Solution:
    def findKthLargest(self, nums: List[int], k):
        return min(sorted(nums, reverse=True)[:k])
        
print(Solution().findKthLargest(nums,k))

#*
class Solution:
    def findKthLargest(self, nums, k):
        def heapifyUp(heap, index):
            while index > 0:
                parentIndex = (index - 1) // 2
                if heap[index] < heap[parentIndex]:
                    heap[index], heap[parentIndex] = heap[parentIndex], heap[index]
                    index = parentIndex
                else:
                    break

        def heapifyDown(heap, index):
            size = len(heap)
            while index < size:
                leftChildIndex = 2 * index + 1
                rightChildIndex = 2 * index + 2
                smallestIndex = index

                if leftChildIndex < size and heap[leftChildIndex] < heap[smallestIndex]:
                    smallestIndex = leftChildIndex
                if rightChildIndex < size and heap[rightChildIndex] < heap[smallestIndex]:
                    smallestIndex = rightChildIndex

                if smallestIndex != index:
                    heap[index], heap[smallestIndex] = heap[smallestIndex], heap[index]
                    index = smallestIndex
                else:
                    break

        heap = []
        for i in range(k):
            heap.append(nums[i])
            heapifyUp(heap, len(heap) - 1)

        for i in range(k, len(nums)):
            if nums[i] > heap[0]:
                heap[0] = nums[i]
                heapifyDown(heap, 0)

        return heap[0]


print(Solution().findKthLargest(nums,k))