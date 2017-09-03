class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var after_sort = nums.sorted()
        var ans = 0
        for i in 0...after_sort.count-1{
            if (i % 2 == 0){
                ans = ans + after_sort[i]
            }
            
        }
        return ans
    }
}
