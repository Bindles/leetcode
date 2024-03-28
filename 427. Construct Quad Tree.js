// 427. Construct Quad Tree
grid = [[0,1],[1,0]]

 // Definition for a QuadTree node.
 function Node(val,isLeaf,topLeft,topRight,bottomLeft,bottomRight) {
    this.val = val;
    this.isLeaf = isLeaf;
    this.topLeft = topLeft;
    this.topRight = topRight;
    this.bottomLeft = bottomLeft;
    this.bottomRight = bottomRight;
 };

/**
 * @param {number[][]} grid
 * @return {Node}
 */
//MY SOL
var construct = function(grid, length = grid.length, i = 0, j = 0) {
    let children = (length >>= 1) ? [
        construct(grid, length, i, j),
        construct(grid, length, i, j + length),
        construct(grid, length, i + length, j),
        construct(grid, length, i + length, j + length)
    ] : [];
    let leaf = +children.every(n => n.isLeaf && n.val == grid[i][j]);
    return new Node(grid[i][j], leaf, ...(leaf ? [] : children));
}
console.log(construct(grid))