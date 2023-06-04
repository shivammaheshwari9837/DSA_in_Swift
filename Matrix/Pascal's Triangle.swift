/*
Problem Link : https://leetcode.com/problems/pascals-triangle/description/
*/

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var pascalList = [[Int]]()

        for row in 1...numRows {
            var tempList = [Int]()
            for elementIndex in 1...row {
                let pascalValue = nCr(row - 1, elementIndex - 1)
                tempList.append(pascalValue)
            }
            pascalList.append(tempList)
        }
        return pascalList
    }

    //It the solution for Combinations ie. iC0, iC1, iC2, ....
    func nCr(_ n: Int, _ r: Int ) -> Int {
        var result: Int = 1
        for i in 0..<r {
            result *= (n - i)
            result /= (i + 1)
        }
        return result
    }
}
