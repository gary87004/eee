// 先把第一個index 存起來 接著remove掉 再將他加到最後

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var real_k = k % nums.count
        for index in 0...nums.count-1-real_k{
            var temp = nums[0]
            nums.remove(at:0)
            nums.append(temp)
        }
       
         

    }
}
