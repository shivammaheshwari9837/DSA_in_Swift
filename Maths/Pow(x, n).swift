/*
Problem Link : https://leetcode.com/problems/powx-n/
Article Link : https://leetcode.com/problems/powx-n/solutions/3662861/o-1-space-o-log-power-time-100-faster-binary-exponentiation/
*/

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var res = Double(1.0)
        var tempPow = n
        var num = Double(x)

        if (tempPow < 0) { tempPow *= -1 }

        while(tempPow > 0) {
            if (tempPow % 2 == 1) {
                res = res * num
                tempPow -= 1
            } else {
                num *= num
                tempPow /= 2
            }
        }

        if (n < 0) { res = Double(1.0) / Double(res) }
        return res
    }
}
