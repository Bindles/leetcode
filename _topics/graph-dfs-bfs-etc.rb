# Simple graph represented as an adjacency list
graph = {
  0 => [1, 2],
  1 => [0, 3, 4],
  2 => [0, 5],
  3 => [1],
  4 => [1],
  5 => [2]
}

# Depth-first search function
def dfs(graph, start, visited = {})
  # Mark the current vertex as visited
  visited[start] = true
  puts "Visiting vertex #{start}"

  # Explore neighbors recursively
  graph[start].each do |neighbor|
    dfs(graph, neighbor, visited) unless visited[neighbor]
  end
end

# Starting DFS from vertex 0
dfs(graph, 0)



#[1.A TREE]
class Node
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# Let’s build a tree as an example:

root = Node.new(3)
child_l = Node.new(9)
child_r = Node.new(20)
grand_child_r_l = Node.new(15)
grand_child_r_r = Node.new(7)
grand_child_l_l = Node.new(33)
child_r.left = grand_child_r_l
child_r.right = grand_child_r_r
child_l.left = grand_child_l_l
root.right = child_r
root.left = child_l


#[DFS]
def dfs(node)
  p node.val
  children = [node.left, node.right].compact
  children.each do |child|
    dfs(child)
  end
end
dfs(root)

#[BFS]
def bfs(node)
  queue = []
  queue.push(node)
  while(queue.size != 0)
    node = queue.shift
    p node.val
    children = [node.left, node.right].compact
    children.each do |child|
      queue.push(child)
    end
  end
end
bfs(root)


# Given the root of a binary tree, return its maximum depth.
# A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

p 'Maximum Depth of Binary Tree | DFS'
# Maximum Depth of Binary Tree
# Let’s consider small task solved through DFS.
def max_depth(root)
  return 0 if root.nil?
  queue = [root]
  depth = 0
  while !queue.empty?
    for i in 0..queue.length - 1
      node = queue.shift
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end
    depth += 1
  end
  depth
end

 p max_depth(root)