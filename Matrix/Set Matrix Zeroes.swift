/*
Problem Link : https://leetcode.com/problems/set-matrix-zeroes/
*/

class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        let rowCount = matrix.count
        let columnCount = matrix[0].count

        //using to store info about whether first row and first column need to be zero or not
        var firstRow = false, firstCol = false

        //looping for info about first column
        for i in 0..<rowCount {
            if matrix[i][0] == 0 {
                firstCol = true
            }
        }

         //looping for info about first row
        for j in 0..<columnCount {
            if matrix[0][j] == 0 {
                firstRow = true
            }
        }

        //only setting matrix[i][0] and matrix[0][j] as zero to store information
        for i in 1..<rowCount {
            for j in 1..<columnCount {
                if matrix[i][j] == 0 {
                    matrix[i][0] = 0
                    matrix[0][j] = 0
                }
            }
        }

        //filling the matrix row-wise from stored info in matrix[i][0]
        for i in 1..<rowCount {
            if matrix[i][0] == 0 {
                for j in 1..<columnCount {
                    matrix[i][j] = 0
                }
            }
        }

        ////filling the matrix column-wise from stored info in matrix[0][j]
        for j in 0..<columnCount {
            if matrix[0][j] == 0 {
                for i in 1..<rowCount {
                    matrix[i][j] = 0
                }
            }
        }

        //finally checking for first row need to be zero or not
        if firstRow {
            for j in 0..<columnCount {
                matrix[0][j] = 0
            }
        }
        //finally checking for first column need to be zero or not
        if firstCol {
            for i in 0..<rowCount {
                matrix[i][0] = 0
            }
        }
    }
}
