/*
Problem Link : https://leetcode.com/problems/reverse-linked-list/
*/

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        //base case
        guard var current = head else { return nil }

        //recursive
        let next = reverseList(current.next)
        current.next = prev

    }
}
