/*

Problem Link : https://leetcode.com/problems/first-letter-to-appear-twice/

*/

class Solution {
    func repeatedCharacter(_ s: String) -> Character {
        var map: [Character: Int] = [Character: Int]()

        for char in s {
            map[char, default: 0] += 1
            if map[char, default: 0] == 2 {
                return char
            }
        }

        return "a"
    }
}
