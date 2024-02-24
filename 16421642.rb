LeetCode Logo
Daily Question
0

avatar
Premium
Debugging...
Debugging...







Run
Description
Description
Editorial
Editorial
Solutions
Submissions
Submissions
Code
Code
Ruby Solution
Testcase
Testcase
Test Result
Search...
Sort by

All
Ruby
C++
Java
Heap (Priority Queue)
Greedy
Array
Binary Search
Binary Tree
Recursion
Dynamic Programming
Memoization
Sorting
Queue
Ordered Set
Iterator
Backtracking
Sort
Hash Table
Two Pointers
Binary Search Tree
Prefix Sum
Linked List
Math
Stack
Tree
Graph
Ordered Map
Simulation
Enumeration
Counting Sort
Game Theory
Biconnected Component
Submit at least 1 AC to publish a solution.

Share my solution

neelarunabh
Aug LeetCoding Challenge
・
12 hours ago
Ruby solution
Ruby
Array
Greedy
Heap (Priority Queue)
0
1
0

ozovalihasan
Annual Badge 2023
・
14 hours ago
Ruby solution
Ruby
0
7
0

mosesngan
Top SQL 50
・
14 hours ago
MaxHeap Solution with Explanation
Ruby
Heap (Priority Queue)
0
3
0

Chris1337
50 Days Badge 2022
・
16 hours ago
Minheap Solution. Detailed comments included!
Ruby
0
6
0

alecn2002
Annual Badge 2023
・
a day ago
Ruby || PriorityQueue
Ruby
0
9
0

0x81
100 Days Badge 2022
・
Mar 01, 2023
237 ms
Ruby
0
25
0

mistersky
Jul LeetCoding Challenge
・
Apr 26, 2021
[Ruby] Binary Search
Ruby
Binary Search
3
127
1

piyushsawaria
Jun LeetCoding Challenge
・
Jun 21, 2022
Ruby | max heap
Ruby
Heap (Priority Queue)
0
55
1

user5889Nk
・
Jun 21, 2022
[Ruby] Hash
Ruby
0
51
0
No more results
Wrong Answer
Runtime: 144 ms
Case 1
Case 2
Case 3
Case 4
Input
heights =
[4,2,7,6,9,14,12]
bricks =
5
ladders =
1
Output
2
Expected
4
Contribute a testcase
All Solutions

Ruby solution

neelarunabh
Aug LeetCoding Challenge
6
1
12 hours ago
Ruby
Array
Greedy
Heap (Priority Queue)
Intuition
Approach
Complexity
Time complexity: O(n log(n))
Space complexity: O(n)
Code
# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
def furthest_building(heights, bricks, ladders)
    counter = 0
    used = Hash.new {0}
    
    heights.each_cons(2) do |h|
        m = h[1]-h[0]
        if m > 0
            if bricks >= m
                bricks -= m
                used[m] += 1
            elsif ladders > 0
                ladders -= 1
                max = used.keys.max
                if !max.nil? && max > m
                    bricks += (max - m)
                    if used[max] > 1
                        used[max] -= 1
                    else
                        used.delete(max)
                    end
                    used[m] += 1
                end
            else
                break;
            end
        end
        counter += 1
    end
  
    counter
end
Next
Ruby solution
Comments (0)

Sort by:Best
Type comment here... (Markdown supported)
Preview
Comment
No comments yet.

0


0



0:48




0:48



Daily Question
Recommend
Recent hot questions we've picked for you.
Show tags
392. Is Subsequence
Easy

1048. Longest String Chain
Medium

799. Champagne Tower
Medium

389. Find the Difference
Easy

316. Remove Duplicate Letters
Medium

880. Decoded String at Index
Medium

905. Sort Array By Parity
Easy

896. Monotonic Array
Easy

456. 132 Pattern
Medium

557. Reverse Words in a String III
Easy

2038. Remove Colored Pieces if Both Neighbors are the Same Color
Medium

1512. Number of Good Pairs
Easy

706. Design HashMap
Easy

229. Majority Element II
Medium

343. Integer Break
Medium

1420. Build Array Where You Can Find The Maximum Exactly K Comparisons
Hard

1458. Max Dot Product of Two Subsequences
Hard

34. Find First and Last Position of Element in Sorted Array
Medium

2009. Minimum Number of Operations to Make Array Continuous
Hard

2251. Number of Flowers in Full Bloom
Hard

1095. Find in Mountain Array
Hard

746. Min Cost Climbing Stairs
Easy

2742. Painting the Walls
Hard

1269. Number of Ways to Stay in the Same Place After Some Steps
Hard

119. Pascal's Triangle II
Easy

1361. Validate Binary Tree Nodes
Medium

2050. Parallel Courses III
Hard

844. Backspace String Compare
Easy

341. Flatten Nested List Iterator
Medium

1425. Constrained Subsequence Sum
Hard

1793. Maximum Score of a Good Subarray
Hard

342. Power of Four
Easy

515. Find Largest Value in Each Tree Row
Medium

779. K-th Symbol in Grammar
Medium

823. Binary Trees With Factors
Medium

5. Longest Palindromic Substring
Medium

1220. Count Vowels Permutation
Hard

458. Poor Pigs
Hard

1356. Sort Integers by The Number of 1 Bits
Easy

2433. Find The Original Array of Prefix Xor
Medium

501. Find Mode in Binary Search Tree
Easy

2265. Count Nodes Equal to Average of Subtree
Medium

1441. Build an Array With Stack Operations
Medium

1503. Last Moment Before All Ants Fall Out of a Plank
Medium

1535. Find the Winner of an Array Game
Medium

1845. Seat Reservation Manager
Medium

1921. Eliminate Maximum Number of Monsters
Medium

2849. Determine if a Cell Is Reachable at a Given Time
Medium

1759. Count Number of Homogenous Substrings
Medium

1743. Restore the Array From Adjacent Pairs
Medium

2642. Design Graph With Shortest Path Calculator
Hard

815. Bus Routes
Hard

2785. Sort Vowels in a String
Medium

1930. Unique Length-3 Palindromic Subsequences
Medium

1846. Maximum Element After Decreasing and Rearranging
Medium

1980. Find Unique Binary String
Medium

1877. Minimize Maximum Pair Sum in Array
Medium

1838. Frequency of the Most Frequent Element
Medium

1887. Reduction Operations to Make the Array Elements Equal
Medium

2391. Minimum Amount of Time to Collect Garbage
Medium

1814. Count Nice Pairs in an Array
Medium

1424. Diagonal Traverse II
Medium

1630. Arithmetic Subarrays
Medium

1561. Maximum Number of Coins You Can Get
Medium

1685. Sum of Absolute Differences in a Sorted Array
Medium

1727. Largest Submatrix With Rearrangements
Medium

935. Knight Dialer
Medium

2147. Number of Ways to Divide a Long Corridor
Hard

191. Number of 1 Bits
Easy

1611. Minimum One Bit Operations to Make Integers Zero
Hard

1662. Check If Two String Arrays are Equivalent
Easy

1160. Find Words That Can Be Formed by Characters
Easy

1266. Minimum Time Visiting All Points
Easy

2264. Largest 3-Same-Digit Number in String
Easy

1688. Count of Matches in Tournament
Easy

1716. Calculate Money in Leetcode Bank
Easy

1903. Largest Odd Number in String
Easy

606. Construct String from Binary Tree
Medium

94. Binary Tree Inorder Traversal
Easy

867. Transpose Matrix
Easy

1287. Element Appearing More Than 25% In Sorted Array
Easy

1464. Maximum Product of Two Elements in an Array
Easy

1582. Special Positions in a Binary Matrix
Easy

2482. Difference Between Ones and Zeros in Row and Column
Medium

1436. Destination City
Easy

242. Valid Anagram
Easy

2353. Design a Food Rating System
Medium

1913. Maximum Product Difference Between Two Pairs
Easy

661. Image Smoother
Easy

2706. Buy Two Chocolates
Easy

1637. Widest Vertical Area Between Two Points Containing No Points
Easy

1422. Maximum Score After Splitting a String
Easy

1496. Path Crossing
Easy

1758. Minimum Changes To Make Alternating Binary String
Easy

91. Decode Ways
Medium

1155. Number of Dice Rolls With Target Sum
Medium

1578. Minimum Time to Make Rope Colorful
Medium

1531. String Compression II
Hard

1335. Minimum Difficulty of a Job Schedule
Hard

1897. Redistribute Characters to Make All Strings Equal
Easy

1624. Largest Substring Between Two Equal Characters
Easy

455. Assign Cookies
Easy

2610. Convert an Array Into a 2D Array With Conditions
Medium

2125. Number of Laser Beams in a Bank
Medium

2870. Minimum Number of Operations to Make Array Empty
Medium

300. Longest Increasing Subsequence
Medium

1235. Maximum Profit in Job Scheduling
Hard

446. Arithmetic Slices II - Subsequence
Hard

938. Range Sum of BST
Easy

872. Leaf-Similar Trees
Easy

2385. Amount of Time for Binary Tree to Be Infected
Medium

1026. Maximum Difference Between Node and Ancestor
Medium

1704. Determine if String Halves Are Alike
Easy

1347. Minimum Number of Steps to Make Two Strings Anagram
Medium

1657. Determine if Two Strings Are Close
Medium

2225. Find Players With Zero or One Losses
Medium

380. Insert Delete GetRandom O(1)
Medium

1207. Unique Number of Occurrences
Easy

70. Climbing Stairs
Easy

931. Minimum Falling Path Sum
Medium

907. Sum of Subarray Minimums
Medium

198. House Robber
Medium

645. Set Mismatch
Easy

1239. Maximum Length of a Concatenated String with Unique Characters
Medium

1457. Pseudo-Palindromic Paths in a Binary Tree
Medium

1143. Longest Common Subsequence
Medium

576. Out of Boundary Paths
Medium

629. K Inverse Pairs Array
Hard

1074. Number of Submatrices That Sum to Target
Hard

232. Implement Queue using Stacks
Easy

150. Evaluate Reverse Polish Notation
Medium

739. Daily Temperatures
Medium

2966. Divide Array Into Arrays With Max Difference
Medium

1291. Sequential Digits
Medium

1043. Partition Array for Maximum Sum
Medium

76. Minimum Window Substring
Hard

387. First Unique Character in a String
Easy

49. Group Anagrams
Medium

451. Sort Characters By Frequency
Medium

279. Perfect Squares
Medium

368. Largest Divisible Subset
Medium

647. Palindromic Substrings
Medium

1463. Cherry Pickup II
Hard

169. Majority Element
Easy

2108. Find First Palindromic String in the Array
Easy

2149. Rearrange Array Elements by Sign
Medium

2971. Find Polygon With the Largest Perimeter
Medium

1481. Least Number of Unique Integers after K Removals
Medium

1642. Furthest Building You Can Reach
Medium

2402. Meeting Rooms III
Hard

