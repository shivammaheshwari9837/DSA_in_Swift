/*
Problem Link: https://leetcode.com/problems/binary-tree-right-side-view/
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
    func rightSideView(_ root: TreeNode?) -> [Int] {
        var results = [Int]()
        rightView(root, &results, 0)
        return results
    }

    func rightView(_ root: TreeNode?, _ results: inout [Int],_ level: Int) {
        //base
        guard let root = root else { return }

        if results.count == level { results.append(root.val) }

        rightView(root.right, &results, level + 1)
        rightView(root.left, &results, level + 1)
        
    }
}
