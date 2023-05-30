/*
Problem Link : https://leetcode.com/problems/find-lucky-integer-in-an-array/
*/

class Solution {
    func findLucky(_ arr: [Int]) -> Int {
        var frequencyList = [Int: Int]()

        arr.forEach { number in
            frequencyList[number, default: 0] += 1
        }

        var maxNum = -1

        for (key, num) in frequencyList {
            if key == num {
                maxNum = max(maxNum, key)
            }
        }
        return maxNum

    }
}
