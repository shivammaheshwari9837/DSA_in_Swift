/*
Problem Link : https://leetcode.com/problems/add-two-numbers/
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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carryForSum = 0
        var list1 = l1
        var list2 = l2
        var headNode = ListNode()
        var tailNode = headNode

        while list1 != nil || list2 != nil || carryForSum > 0 {
            var totalSum = 0
            if list1 != nil {
                totalSum += list1!.val
                list1 = list1!.next
            }
            
            if list2 != nil {
                totalSum += list2!.val
                list2 = list2!.next
            }

            totalSum += carryForSum
            carryForSum = totalSum / 10

            tailNode.next = ListNode(totalSum % 10)
            tailNode = tailNode.next!
        }

        return headNode.next
    }
}
