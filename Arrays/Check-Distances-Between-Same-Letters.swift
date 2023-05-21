/* 
Problem Link : https://leetcode.com/problems/check-distances-between-same-letters/
*/

class Solution {
    func checkDistances(_ s: String, _ distance: [Int]) -> Bool {
        var concurrentIndex: [Character: (Int, Int)] = [:]


        for (index, character) in s.enumerated() {
            if var value = concurrentIndex[character] {
                concurrentIndex[character]?.1 = index
            } else {
                concurrentIndex[character] = (index, 0)
            }
        }


        for (key, value) in concurrentIndex {
            let indexDiff = (value.1 - value.0) - 1
            guard let charIndex = key.asciiValue else {
                return false
            } 
            let charDiff = Int(charIndex) - Int(Character("a").asciiValue!)
            if indexDiff != distance[charDiff] {
                return false
            }
        }

        return true
    }
}
