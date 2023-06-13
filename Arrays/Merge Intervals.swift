/*
Problem Link : https://leetcode.com/problems/merge-intervals/
*/

class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let sortedIntervals = intervals.sorted(by: { $0[0] < $1[0] })

        var mergedIntervals = [[Int]]()
        mergedIntervals.append(sortedIntervals[0])

        for index in 1..<sortedIntervals.count {
            if mergedIntervals[mergedIntervals.count - 1][1] >= sortedIntervals[index][1] {
                //do nothing
            } else if mergedIntervals[mergedIntervals.count - 1][1] >= sortedIntervals[index][0] {
                mergedIntervals[mergedIntervals.count - 1][1] = sortedIntervals[index][1]
            }  else {
                mergedIntervals.append(sortedIntervals[index])
            }
        }

        return mergedIntervals

    }
}
