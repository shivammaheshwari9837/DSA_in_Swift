/*
Problem Link : https://leetcode.com/problems/merge-sorted-array/
*/

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var left = m - 1 // left pointer at last of nums1 list
        var right = n - 1 // right pointer at last of nums2 list
        var currentIndex = m + n - 1 //last pointer at final list

        while(left >= 0 && right >= 0) {
            if (nums1[left] <= nums2[right]) { // if value at nums1 <= nums2
                nums1[currentIndex] = nums2[right] //we will update our final index with nums2 value
                right -= 1
            } else { //else update our final index with nums1 element
                nums1[currentIndex] = nums1[left]
                left -= 1
            }
            currentIndex -= 1
        }

        while (right >= 0 ) { //might be possibility that few larger elements are unable to get satisfactory position in final list, and nums1 array iteration ends
            nums1[currentIndex] = nums2[right]
            right -= 1
            currentIndex -= 1
        }
    }
}
