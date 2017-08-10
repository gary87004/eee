// 首先sort 之後循序搜尋 如果相等 counter+1 當 counter > n/2  即是答案 
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var counter = 0
        var ans = 0
        
        if nums.count == 1{
            ans = nums[0]
        }
        else{
            var nums_sort = nums.sorted()
            for index in 0...nums_sort.count-2{
                if nums_sort[index] == nums_sort[index + 1]{
                    counter = counter + 1
                    if counter >= nums_sort.count/2{
                        ans = nums_sort[index]
                        break
                    }
                }
                else{
                    counter = 0
                }
            }
        }
            return ans
    }
}
