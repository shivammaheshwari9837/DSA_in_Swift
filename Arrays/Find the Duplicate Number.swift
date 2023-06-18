/*
Problem Link : https://leetcode.com/problems/find-the-duplicate-number/
*/

class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var slow = nums[0]
        var fast = nums[0]

        repeat {
            slow = nums[slow]
            fast = nums[nums[fast]]
        } while (slow != fast)

        fast = nums[0]

        while (fast != slow ) {
            slow = nums[slow]
            fast = nums[fast]
        }

        return fast
    }
}
