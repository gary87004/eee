
// 解法一 binary search 
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var H = nums.count - 1
        var L = 0
        
        while(L <= H){
            var M = ( H + L ) / 2
			      if target == nums[M]{
				        return M
			      }
            else if target > nums[M]{
                L = M + 1
            }
            else if target < nums[M]{
                H = M - 1
            }
        }
        return L
    }
}


// 解法二 sequential search
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var sort_nums = (nums + [target]).sorted()
        var index = 0
        var ans = 0
        for item in sort_nums{
            if item == target{
                ans = index
                break
            }
            else{
                index = index + 1
            }
            
        }
        return ans
    }
}

// 解法三 多此一舉
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var sort_nums = Array(Set((nums + [target])).sorted())
        // var after_set = Array(Set(sort_nums)).sorted()
        var H = sort_nums.count - 1
        var L = 0
        var M = ( H + L ) / 2

            while(target != sort_nums[M]){
                M = ( H + L ) / 2

                if target > sort_nums[M]{
                    L = M + 1
                }
                else if target < sort_nums[M]{
                    H = M - 1
                }
            }
            return M
        
        
    }
}
