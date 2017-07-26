// 先排序 排序後相同的數字會再一起 之後再一一比對兩數字相同 這方法速度滿慢的

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var after_sort = nums.sorted()
        var i = 0
        var ans = after_sort[0]
        if(nums.count == 1)
            {
            ans = after_sort[0]
            }
        else
        {
            while(after_sort[i] + after_sort[i+1] == 2*after_sort[i])
                {
                i = i+2    
                ans = after_sort[i]
                if(i == nums.count-1)
                    {
                    ans = after_sort[nums.count-1]
                    break
                    }
                }
        }
        return ans
    }
}
