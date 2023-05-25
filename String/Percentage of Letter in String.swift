/*
  Problem Link: https://leetcode.com/problems/percentage-of-letter-in-string/
*/

class Solution {
    func percentageLetter(_ s: String, _ letter: Character) -> Int {
        var countOfLetter: Int = 0

        s.forEach { character in
            if character == letter {
                countOfLetter += 1
            }
        }

        return countOfLetter * 100 / s.count
    }
}
