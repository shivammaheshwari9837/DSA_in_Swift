/*

Problem Link : https://leetcode.com/problems/decode-the-message/

*/

class Solution {
    func decodeMessage(_ key: String, _ message: String) -> String {
        var ciperDict: [Character: Int] = [:], sequenceIndex: Int = -1
        key.forEach { char in
            if char == " " {
                return
            } else if let keyCheck = ciperDict[char] {
                return
            } else {
                sequenceIndex += 1
                ciperDict[char] = sequenceIndex
            }
        }

        var decodedText: String = ""

        message.forEach { letter in
            if letter == " " {
                decodedText += " "
            } else if let index = ciperDict[letter] {
                if let scalar = UnicodeScalar(97 + index) {
                    let alphabetToAppend = String(scalar)
                    decodedText += "\(alphabetToAppend)"
                }
            }
        }

        return decodedText
    }
}

