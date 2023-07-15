/*
Problem Link: https://leetcode.com/problems/intersection-of-two-linked-lists/
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
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var tailHeadA = headA, tailHeadB = headB, countA = 0, countB = 0

        while(tailHeadA != nil) {
            countA += 1
            tailHeadA = tailHeadA?.next
        }

        while(tailHeadB != nil) {
            countB += 1
            tailHeadB = tailHeadB?.next
        }

        var longerList: ListNode?, shorterList: ListNode?

        if countA >= countB {
            longerList = headA
            shorterList = headB
        } else {
            shorterList = headA
            longerList = headB
        }

        var diffLength = abs(countA - countB)

        while(diffLength > 0) {
            diffLength -= 1
            longerList = longerList?.next
        }

        while(longerList != nil && shorterList != nil) {
            let iden1 = ObjectIdentifier(longerList!), iden2 = ObjectIdentifier(shorterList!) 
            if iden1 == iden2 {
                return longerList
            }
            longerList = longerList?.next
            shorterList = shorterList?.next
        }

        return nil
    }
}
