//Set 可消除 duplicate

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var unique = Set(nums)
        return nums.count != unique.count
       
    }
}
