/*

Problem Link : https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/

*/

class Solution {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var availableChars = [Character: Int]()

        chars.forEach { char in
            availableChars[char, default: 0] += 1
        }

        var resultantLength = 0

        words.forEach { word in
            var tempAvailable = availableChars
            var isGoodWord = true
            word.forEach { char in
                if let count = tempAvailable[char], count != 0 {
                    tempAvailable[char] = count - 1
                } else {
                    isGoodWord = false
                }
            }

            if isGoodWord {
                resultantLength += word.count
            }
        }

        return resultantLength
    }
}
