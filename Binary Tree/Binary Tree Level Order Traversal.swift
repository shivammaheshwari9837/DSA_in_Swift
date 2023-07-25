/*
Problem Link :https://leetcode.com/problems/binary-tree-level-order-traversal/
*/

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var result = [[Int]]()
        var queue = [TreeNode]()

        queue.append(root)

        while !queue.isEmpty {
            let size = queue.count
            var tempLevelist = [Int]()

            for index in 0..<size {
                if let currentNode = queue.first {
                    tempLevelist.append(currentNode.val)

                    if let leftNode = currentNode.left {
                    queue.append(leftNode)
                    }

                    if let rightNode = currentNode.right {
                    queue.append(rightNode)
                    }

                    queue.removeFirst()
                }
            }
            result.append(tempLevelist)

        }

        return result
    }
}
