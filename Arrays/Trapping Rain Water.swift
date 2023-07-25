/*
Problem Link : https://leetcode.com/problems/trapping-rain-water/
*/

class Solution {
    func trap(_ height: [Int]) -> Int {
        var prefixSum = Array(repeating: 0, count: height.count)
        var suffixSum = Array(repeating: 0, count: height.count)
        prefixSum[0] = height[0]
        for index in 1..<height.count {
            prefixSum[index] = max(height[index], prefixSum[index - 1])
        }

        suffixSum[height.count - 1] = height[height.count - 1]
        for index in (0..<height.count - 1).reversed() {
            suffixSum[index] = max(height[index], suffixSum[index + 1])
        }

        var trappedWater = 0

        for (index, ele) in height.enumerated() {
            if index == 0 || index == height.count - 1 { continue }
            trappedWater += (min(prefixSum[index], suffixSum[index]) - ele)
        }

        return trappedWater
    }
}
