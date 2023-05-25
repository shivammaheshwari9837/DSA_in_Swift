/*
  Problem Link : https://leetcode.com/problems/unique-email-addresses/description/
*/

class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {
        return Set(emails.map(resultEmail)).count
    }

    func resultEmail(_ s: String) -> String {

        let localNameWithDomainName = s.components(separatedBy: "@")
        let validLocalName = localNameWithDomainName[0]
        .components(separatedBy: "+")
        .first!.components(separatedBy: ".")
        .joined()
        return "\(validLocalName)@\(localNameWithDomainName[1])"
        
    }
}
