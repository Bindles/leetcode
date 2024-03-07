#PYTHON
#*117. Populating Next Right Pointers in Each Node II
from collections import deque

# Definition for a Node.
class Node:
    def __init__(self, val=0, left=None, right=None, next=None):
        self.val = val
        self.left = left
        self.right = right
        self.next = next

class Solution:
    def connect(self, root):
        if not root:
            return root
        queue = deque([root])
        while queue:
            length = len(queue)
            current = None
            for count in range(length):
                node = queue.popleft()
                if node:
                    if current:
                        current.next = node
                    if node.left:
                        queue.append(node.left)
                    if node.right:
                        queue.append(node.right)
                current = node
        return root

# Creating a sample tree
# Create nodes
root = Node(1)
root.left = Node(2)
root.right = Node(3)
root.left.left = Node(4)
root.left.right = Node(5)
root.right.right = Node(7)

# Create solution object
s = Solution()

# Call the connect method and print the result
connected_root = s.connect(root)
print(connected_root)
