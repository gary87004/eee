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
            if(temp > ans)
                {
                ans = temp
                }
        if(nums[i]==0)
			{
			temp=0	
			}
            
        }
    if(ans > temp)
        {return ans}
    else if (ans < temp)
        {return temp}
    else
        {return ans}
    
    }
}
