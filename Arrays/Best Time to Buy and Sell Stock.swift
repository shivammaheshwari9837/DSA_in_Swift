/**
Problem Link : https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
**/

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minBuy = prices[0]
        var maxProfit = 0

        prices.forEach { price in
            if price <= minBuy {
                minBuy = price
            } else {
                maxProfit = max(maxProfit, price - minBuy)
            }
        }

        return maxProfit
    }
}
