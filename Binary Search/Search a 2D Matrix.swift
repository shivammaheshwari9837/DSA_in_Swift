/*
Problem Link : https://leetcode.com/problems/search-a-2d-matrix/description/
*/

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let rowSize = matrix[0].count
        var low = 0
        var high = (rowSize * matrix.count - 1)

        while(low <= high) {
            let mid = low + (( high - low) / 2)

            if(matrix[mid / rowSize][mid % rowSize] == target) {
                return true
            } else if (matrix[mid / rowSize][mid % rowSize] > target) {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }

        return false
    }
}
