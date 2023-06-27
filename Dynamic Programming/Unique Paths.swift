/*
Problem Link : https://leetcode.com/problems/unique-paths/
Article Link : https://leetcode.com/problems/unique-paths/solutions/3690116/100-faster-bottom-up-dp-memoization/
*/

class Solution {

    func uniquePaths(_ m: Int, _ n: Int, _ dp: inout [[Int]]) -> Int {
        //base case
        if m == 0 && n == 0 { return 1 }

        if m < 0 || n < 0 { return 0 }

        if dp[m][n] != -1 { return dp[m][n] }

        //left
        let left = uniquePaths(m, n-1, &dp)
        //up
        let right = uniquePaths(m-1, n, &dp)
        
        dp[m][n] = left + right
        return dp[m][n]
    }

    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp = [[Int]](repeating: [Int](repeating: -1, count: n+1), count: m+1) 

        let result = uniquePaths(m - 1, n - 1, &dp)
        return result
    }
}
