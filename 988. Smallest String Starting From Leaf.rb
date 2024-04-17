#* 988. Smallest String Starting From Leaf
root = [0,1,2,3,4,3,4]
# @param {TreeNode} root
# @return {String}

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  def leaf?
    left.nil? && right.nil?
  end

  def min_str(postfix = '')
    if leaf?
      val.achr + postfix
    else
      [left, right].compact.map{|p|p.min_str(val.achr + postfix) }.min
    end
  end

end

class Integer
  def achr
    (self + 'a'.ord).chr
  end
end

def smallest_from_leaf(root)
  root.min_str
end

# Example usage:
root = TreeNode.new(
  0,
  TreeNode.new(
    1,
    TreeNode.new(3, TreeNode.new(4), TreeNode.new(4)),
    TreeNode.new(3)
  ),
  TreeNode.new(2)
)

p smallest_from_leaf(root)



#* FOR LC
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
# @return {String}
class TreeNode
  def leaf?
    left.nil? && right.nil?
  end

  def min_str(postfix = '')
    if leaf?
      val.achr + postfix
    else
      [left, right].compact.map{|p|p.min_str(val.achr + postfix) }.min
    end
  end
  
end

class Integer
  def achr
    (self + 'a'.ord).chr
  end
end

def smallest_from_leaf(root)
  root.min_str
end