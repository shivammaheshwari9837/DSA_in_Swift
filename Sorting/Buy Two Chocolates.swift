/*

Problem Link : https://leetcode.com/problems/buy-two-chocolates/

*/

class Solution {
    func buyChoco(_ prices: [Int], _ money: Int) -> Int {
        let sortedList = prices.sorted()
        let moneyLeft = money - (sortedList[0] + sortedList[1])

        return moneyLeft >= 0 ? moneyLeft : money
    }
}
