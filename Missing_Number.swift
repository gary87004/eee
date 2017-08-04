// 先算出若無少element的總和 再 扣掉 真實array的總和 即可得知少哪一個數字

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var sort_nums = nums.sorted()
        var length = sort_nums.count
        var ideal_sum = 0
        var real_sum = 0
        if(sort_nums[length - 1] == length - 1){
            return length 
            
        }
        else{
            for i in 0...sort_nums[length - 1]{
                ideal_sum = ideal_sum + i
            }
            for j in 0...length - 1{
                real_sum = real_sum + sort_nums[j]
            }
            return ideal_sum - real_sum
        }
    }
}
