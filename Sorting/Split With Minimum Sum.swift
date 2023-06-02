/*

Problem Link : https://leetcode.com/problems/split-with-minimum-sum/

*/

class Solution {
    func splitNum(_ num: Int) -> Int {
        "\(num)"
        .sorted()
        .enumerated()
        .reduce(into: ["",""]) { arr, tuple in
            let (index, value) = tuple
            arr[index & 1].append(value)
        }
        .map{ Int($0) ?? 0 }
        .reduce(0,+)
    }
}
