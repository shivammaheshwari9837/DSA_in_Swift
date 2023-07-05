/*
Porblem Link : https://leetcode.com/problems/middle-of-the-linked-list/
Article Link : https://leetcode.com/problems/middle-of-the-linked-list/solutions/3723739/100-faster-tortoise-hare-approach-o-1-space-on-time/
*/

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head

        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}
