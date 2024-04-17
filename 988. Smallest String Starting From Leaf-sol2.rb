#* 988. Smallest String Starting From Leaf
roo
# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} root
# @return {String}

root = TreeNode.new(
  0,
  TreeNode.new(
    1,
    TreeNode.new(3, TreeNode.new(4), TreeNode.new(4)),
    TreeNode.new(3)
  ),
  TreeNode.new(2)
)

#*
def smallest_from_leaf(root, accumlate_str = "")
  return "" unless root

  accumlate_str += ('a'.ord + root.val).chr
  if !root.left && !root.right
      return accumlate_str.reverse
  end
  
  left = smallest_from_leaf(root.left, accumlate_str)
  right = smallest_from_leaf(root.right, accumlate_str)

  return right if left == "" 
  return left if right == "" 

  [left, right].min
end
p smallest_from_leaf(root)