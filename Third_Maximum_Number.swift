// 先將重複的移除 接下來 排序  最後return 第三大的數字

class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var unique = Array(Set(nums))
        var after_sort = unique.sorted()
        if (after_sort.count < 3){
            return after_sort[after_sort.count-1]
            }
        else{
            return after_sort[after_sort.count-3]
        }
    }
}
