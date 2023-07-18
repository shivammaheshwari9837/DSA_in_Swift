/*
Problem Link : https://leetcode.com/problems/linked-list-cycle-ii/
*/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var slow = head, fast = head, isCycleFound = false

        while slow != nil && fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if slow === fast {
                isCycleFound = true
                break
            }
        }

        if !isCycleFound { return nil }

        var entry = head
        while slow != nil && entry != nil {
            if slow === entry { return slow }
            slow = slow?.next
            entry = entry?.next
        }

        return nil
    }
}
