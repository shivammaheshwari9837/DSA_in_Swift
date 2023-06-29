/*
Problem Link : https://leetcode.com/problems/4sum/
Article Link : https://leetcode.com/problems/4sum/solutions/3697815/on3-time-o-1-space-sorting-two-pointers/
*/

class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        let count = nums.count
        var result = [[Int]]()
        let sortedList = nums.sorted()

        for i in 0..<count {
            if i > 0 && sortedList[i] == sortedList[i - 1] { continue }
            for j in i+1..<count {
                if j > i + 1 && sortedList[j] == sortedList[j - 1] { continue }
                var k = j + 1
                var l = count - 1

                while( k < l ) {
                    let tempSum = sortedList[i] + sortedList[j] + sortedList[k] + sortedList[l]
                    if tempSum == target {
                        let quad = [sortedList[i], sortedList[j], sortedList[k], sortedList[l]]
                        result.append(quad)
                        k += 1
                        l -= 1
                        
                    while( k < l && sortedList[k] == sortedList[k - 1]) { k += 1 }
                    while( k < l && sortedList[l] == sortedList[l + 1]) { l -= 1 }

                    } else if tempSum < target {
                        k += 1
                    } else {
                        l -= 1
                    }
                }
            }
        }

        return result
    }
}
