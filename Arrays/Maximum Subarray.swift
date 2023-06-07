/*
Problem Link : https://leetcode.com/problems/maximum-subarray/
*/

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = Int.min
        var currentSum = 0

        for index in 0..<nums.count {
            currentSum += nums[index]

            //this must comes before due to example like : [-1]
            maxSum = max(maxSum, currentSum)

            if currentSum < 0 {
                currentSum = 0
            }

        }

        return maxSum
    }
}
