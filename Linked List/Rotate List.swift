/*
Problem Link : https://leetcode.com/problems/rotate-list/
*/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head == nil { return nil }
        if head?.next == nil { return head }

        let tuple = calculateLength(head)
        var length = tuple.count, lastNode = tuple.lastNode
        let nodeToReverse = k % length
        var linkIndexToBreak = length - nodeToReverse

        //circular linked list
        var headNode = head
        lastNode?.next = headNode
        while linkIndexToBreak > 1 {
            headNode = headNode?.next
            linkIndexToBreak -= 1
        }

        let resultHeadNode: ListNode? = headNode?.next
        headNode?.next = nil

        return resultHeadNode
    }

    func calculateLength(_ head: ListNode?) -> (count: Int, lastNode: ListNode?) {
        var count = 0, headNode = head, lastNode: ListNode? = nil
        while headNode != nil {
            if headNode?.next == nil {
                lastNode = headNode
            }
            count += 1
            headNode = headNode?.next
        }
        return (count: count, lastNode: lastNode)
    }
}
