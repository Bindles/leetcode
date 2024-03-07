#*876. Middle of the Linked List
# @param {ListNode} head
# @return {ListNode}
#*WORKING | ARRAY
def middle_node(head = [1,2,3,4,5,6])
    head.length.odd? ? (mid = head.length / 2) : (mid = head.length / 2+1)
    midrange = (mid-1)..(mid+1)
    p head[mid]
    p midrange

    head[midrange].each {|ea| p ea}
end
p middle_node

#*LINK LIST STARTS HERE..
# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# Create a ListNode instance
head = ListNode.new(1)
head.next = ListNode.new(2)
head.next.next = ListNode.new(3)
head.next.next.next = ListNode.new(4)
head.next.next.next.next = ListNode.new(5)

#*SOL
def middle_node(head)
    slow = fast = head
    slow = slow.next and fast = fast.next.next while fast && fast.next; return slow
end
p middle_node(head)

#*SOL | LONG
def middle_node(head)
    slow = head
    fast = head

    while fast && fast.next
        slow = slow.next
        fast = fast.next.next
    end
    return slow
end
p middle_node(head)
