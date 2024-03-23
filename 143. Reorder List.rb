#* 143. Reorder List
head = [1,2,3,4,5]
#* LEARN =>
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
#* MY SOL | FAST
def reorder_list(head)
  fast = slow = head
  while fast && fast.next
    fast = fast.next.next
    slow = slow.next 
  end
    
  prev = nil
  while slow
    prev, slow.next, slow = slow, prev, slow.next
  end
        
  node = head
  while prev && prev.next
    node.next, node = prev, node.next
    prev.next, prev = node, prev.next
  end
end

#* OTHER  PPL INTERESTING SOL
#* FASTEST
def reorder_list(head)
  return [] unless head 
  arr, step = [head.val], head 
  arr << step.val while step = step.next
  arr = (1..(arr.size/2)).inject([arr[0]]) { |new_arr, i|
    new_arr << arr[-i]
    new_arr << arr[i]
    new_arr
  }
  i, step = 1, head
  (step.val = arr[i] and i +=1) while step = step.next
end