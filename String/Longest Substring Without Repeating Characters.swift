/*
Problem Link: https://leetcode.com/problems/longest-substring-without-repeating-characters/
*/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var arr = Array(s)
        var setOfChars = Set<Character>()
        var longestSeq = 0
        var left = 0

        for right in 0..<arr.count {
            while(setOfChars.contains(arr[right]) ) {
                setOfChars.remove(arr[left])
                left += 1
            }
            longestSeq = max(longestSeq, right - left + 1)
            setOfChars.insert(arr[right])
        }

        return longestSeq
    }
}
