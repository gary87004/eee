// 要得到三個數字相乘的最大值 一定要是正的 所以有可能是最大的三個正數相乘或是
//一個最大正數和兩個最小負數相乘 所以目標是比較這兩個數  誰大誰就是答案
// 可以全部排序完 再找這五個數字 (解法二)
// 也可以只找出前三大 以及 前二小 (解法一)

class Solution {
    func maximumProduct(_ nums: [Int]) -> Int {
        var max1 = 0
        var max2 = 0
        var max3 = 0
        var min1 = 0
        var min2 = 0
        if nums.count == 3{
            return nums[0] * nums[1] * nums[2]
        }
        
            for item in nums{
                if item > max1{
                    max3 = max2
                    max2 = max1
                    max1 = item
                }
                else if item > max2{
                    max3 = max2
                    max2 = item
                }
                else if item > max3{
                    max3 = item
                }
            
                if item < min2{
                    min1 = min2
                    min2 = item
                }
                else if item < min1{
                    min1 = item
                }
        }
        
        return max(max1 * max2 * max3 , max1 * min1 * min2)
        

    }
}

class Solution {
    func maximumProduct(_ nums: [Int]) -> Int {

        

         var sort_nums = nums.sorted()
         var size = nums.count
         var candidate1 = sort_nums[nums.count-1] * sort_nums[nums.count-2] * sort_nums[nums.count-3]
         var candidate2 = sort_nums[0] * sort_nums[1] * sort_nums[nums.count-1]
        
         // return candidate1 > candidate2 ? candidate1 : candidate2
         return max(candidate1,candidate2)
    }
}
