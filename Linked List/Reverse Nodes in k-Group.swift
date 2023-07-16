/*
Problem Link : https://leetcode.com/problems/reverse-nodes-in-k-group/
Tutorial : https://leetcode.com/problems/reverse-nodes-in-k-group/solutions/3774801/99-accepted-faster-on-time-on-space-recursive-solution/
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
    func findLength(_ head: ListNode?) -> Int {
        var count = 0
        var head = head
        while(head != nil) {
            count += 1
            head = head?.next
        }
        return count
    }

    func recursiveReveral(_ head: ListNode?, _ k: Int,_ length: Int) -> ListNode? {
        if length < k { return head }

        var current = head, tempK = k, head = head
        var forward: ListNode?, prev: ListNode?
        while tempK > 0 && current != nil {
            forward = current?.next
            current?.next = prev
            prev = current
            current = forward
            tempK -= 1
        }
        if head != nil { head?.next = recursiveReveral(current, k, length - k) }
        return prev
    }

    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        var headNode = head
        let length = findLength(headNode)
        headNode = head
        return recursiveReveral(headNode, k, length)
    }
}
