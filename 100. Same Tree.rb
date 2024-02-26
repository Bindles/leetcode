# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
#*MY SOL 1 
def is_same_tree(p = [1,2,3], q = [1,2,3])
  return true if p.nil? && q.nil?
  return false if p.nil? || q.nil? || p.val != q.val
  is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)  
end

#*SIMILAR SOL SOMEONE ELSES BUT FASTER | SOL 1.5
def is_same_tree(p = [1,2,3], q = [1,2,3])
  return true if !p && !q
  return false if p && !q || q && !p || p.val != q.val

  is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end


#* SOL 2 | Depth-First Search (DFS) Recursive Solution
def is_same_tree(p, q)
  result = true

  check_same = lambda do |t1, t2|
    return if t1.nil? && t2.nil?

    if t1 && t2 && t1.val == t2.val
      check_same.call(t1.left, t2.left)
      check_same.call(t1.right, t2.right)
    else
      result = false
      return
    end
  end
  check_same.call(p, q)
  result
end

#* SOL 3 Breadth-First Search (BFS) Iterative Solution
def is_same_tree(p, q)
    return true if p.nil? && q.nil?
    return false if p.nil? || q.nil?

    queue1, queue2 = [[p, 0, 0]], [[q, 0, 0]]

    while !queue1.empty? && !queue2.empty?
        curr1, left1, right1 = queue1.shift
        curr2, left2, right2 = queue2.shift

        return false if left1 != left2 || right1 != right2 || curr1.val != curr2.val 

        queue1 << [curr1.left, 0, right1 + 1] if curr1.left
        queue1 << [curr1.right, 1, right1 + 1] if curr1.right
        queue2 << [curr2.left, 0, right2 + 1] if curr2.left
        queue2 << [curr2.right, 1, right2 + 1] if curr2.right
    end
    queue1.empty? && queue2.empty? ? true : false
end
