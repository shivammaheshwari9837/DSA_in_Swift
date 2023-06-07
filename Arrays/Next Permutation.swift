/*
Problem Link : https://leetcode.com/problems/next-permutation/
*/


class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        var breakPoint = -1

        for index in stride(from: nums.count - 2, through: 0, by: -1) {
            if nums[index] < nums[index + 1] {
                breakPoint = index
                break
            }
        }

        if breakPoint == -1 {
            nums.reverse()
            return
        }

        for index in stride(from: nums.count - 1, through: breakPoint + 1, by: -1) {
            if nums[index] > nums[breakPoint] {
                nums.swapAt(index, breakPoint )
                break
            }
        }

        var left = breakPoint + 1
        var right = nums.count - 1
        while(left < right) {
            nums.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
}
