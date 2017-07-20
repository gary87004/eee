// 用for 搜尋每一個元素
// 測試是否為target

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    let size = nums.count
    var ans = [0,0]
    for i in 0...size-2
    {
    for j in i+1...size-1
        {
        if(nums[i]+nums[j]==target)
            {
            ans[0] = i
            ans[1] = j
            }
        }
    }

    return ans
    }
}
