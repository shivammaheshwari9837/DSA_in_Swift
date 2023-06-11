/**
Problem Link : https://leetcode.com/problems/rotate-image/
**/

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        var rows = matrix.count
        var columns = rows

        //transpose of Matrix
        for row in 0..<rows {
            for column in row..<columns {
                let temp = matrix[row][column]
                matrix[row][column] = matrix[column][row]
                matrix[column][row] = temp
            }
        }

        for row in 0..<rows {
            matrix[row].reverse()
        }
    }
}
