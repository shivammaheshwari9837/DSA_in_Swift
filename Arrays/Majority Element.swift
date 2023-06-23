/*
Problem Link: https://leetcode.com/problems/majority-element/
Intuition Blog : https://leetcode.com/problems/majority-element/solutions/3674536/time-o-n-space-o-1-100-faster-boyer-moore-algorithm/
*/

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var majorityElementIndex = 0 //first considering majority element at index 0
        var count = 1 //thus making count

        //we are removing element in pairs when are different

        for (index, element) in nums.enumerated() {
            element == nums[majorityElementIndex] ? (count += 1) : (count -= 1) 
            if count == 0 { //when count is zero,means current element is crossed by different element,thus can't be majority
                majorityElementIndex = index
                count = 1
            }
        }

        return nums[majorityElementIndex]
    }
}
