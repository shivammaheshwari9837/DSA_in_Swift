/*
Problem Link: https://leetcode.com/problems/two-sum/
*/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictWithIndex = [Int: Int]()

        for (index, element) in nums.enumerated() {
            let subtractedValue = target - element

            if let targetIndex = dictWithIndex[subtractedValue] {
                return [index, targetIndex]
            } else {
                dictWithIndex[element] = index
            }
        }
        return []
    }
}
