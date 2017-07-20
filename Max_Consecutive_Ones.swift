class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
     var temp = 0
    var ans  = 0 
    var size = nums.count
    for i in 0...size-1
        {
        if(nums[i]==1)
            {
             temp = temp+1   
                
            }    
         else
            {
            temp=0
            }
        if(ans < temp)
            {
            ans = temp    
            }
            
        }

    return ans
    
    }
}

// 第二種解法

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var sum = 0
    var max = 0
    var size = nums.count
    for i in 0...size-1
        {
        sum = (sum + nums[i])*nums[i]
        if (max<sum)
            {
            max = sum
                
            }
            
            
        }
        return max
   
    }
}
