/* Problem URL : "https://leetcode.com/problems/sort-array-by-parity/" 

*/

class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var nums = nums
        var start = 0
        var end = nums.count - 1

        while start < end {
            if nums[start] % 2 == 0 {
                start += 1
            } else {
                nums.swapAt(start, end)
                end -= 1
            }
        }
        return nums
    }
}
