# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
#*SOL1
def range_sum_bst(root, low, high)
    result = 0
    dfs = -> node do
        return unless node
        val = node.val
        result += val if val.between?(low,high)
        dfs.(node.left) if val >= low
        dfs.(node.right) if node.val <= high
    end
    dfs.(root)
    result
end


#SOL 2
def range_sum_bst(root, low, high)
    sum_traversal(root, low, high)
end
def sum_traversal(node, low, high)
    return 0 if node.nil?
    sum = node.val >= low && node.val <= high ? node.val : 0
    return sum + sum_traversal(node.right, low, high) + sum_traversal(node.left, low, high)
end


#SOL 3
def range_sum_bst(root, low, high)
    stack = [root]
    sum = 0

    while stack.any?
        node = stack.pop
        sum += node.val if node.val >= low && node.val <= high

        stack.push(node.right) if node.right && node.val < high
        stack.push(node.left) if node.left && node.val > low
    end
    sum
end


#SOL 4
def range_sum_bst(root, low, high)
    sum = 0
    return sum if root.nil?
    if root.val >= low && root.val <= high
        sum = root.val 
    end
    left_tree_sum = range_sum_bst(root.left, low, high)
    right_tree_sum = range_sum_bst(root.right, low, high)
    return sum + left_tree_sum + right_tree_sum
end