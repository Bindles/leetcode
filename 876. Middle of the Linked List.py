#*876. Middle of the Linked List
head = [1,2,3,4,5]
# Definition for singly-linked list.
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def middleNode(self, head):
        fast=head
        slow=head

        while fast and fast.next:
            slow=slow.next
            fast=fast.next.next
        
        return slow

# Create a ListNode instance
head = ListNode(1)
head.next = ListNode(2)
head.next.next = ListNode(3)
head.next.next.next = ListNode(4)
head.next.next.next.next = ListNode(5)

s=Solution()
print(s.middleNode(head).val)
