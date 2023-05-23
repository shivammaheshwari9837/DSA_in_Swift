/*

Problem Link: https://leetcode.com/problems/sort-the-people/description/

*/

class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        let listSortedByHeighs = names.enumerated().sorted { (pair1, pair2) -> Bool in
            let (index1, name1) = pair1
            let (index2, name2) = pair2
            return heights[index1] > heights[index2]
        }.map { $0.1 }

        return listSortedByHeighs
    }
}
