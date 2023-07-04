/*
Problem Link : https://leetcode.com/problems/longest-consecutive-sequence/
*/

class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var uniqEle = Set<Int>()

        nums.forEach { ele in
            uniqEle.insert(ele)
        }

        var longestSeq = 0

        nums.forEach { ele in
            if !uniqEle.contains(ele - 1) {
                var tempLongest = 1
                var tempNum = ele
                while(uniqEle.contains(tempNum + 1)) {
                    tempLongest += 1
                    tempNum += 1
                }

                longestSeq = max(longestSeq, tempLongest)
            } 
        }

        return longestSeq
    }
}
