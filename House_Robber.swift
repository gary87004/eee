

class Solution {
    func rob(_ nums: [Int]) -> Int {
        var if_rob_previous = 0                  // max money can get if rob current house
        var if_not_rob_previous = 0              // max money can get if not rob current house
        if(nums.count == 0){
            return 0
        }
        else{
        // We go through all the values, we maintain two counts, 1) if we rob this cell, 2) if we didn't rob this cell
            for num in nums{
                var current_house_rob = if_not_rob_previous + num	    
	    	
        // If we rob current cell, previous cell shouldn't be robbed. So, add the current value to previous one.

                var current_house_not_rob = max(if_rob_previous,if_not_rob_previous)
            
        // If we don't rob current cell, then the count should be max of the previous cell robbed and not robbed

        
                if_rob_previous = current_house_rob
                
                if_not_rob_previous = current_house_not_rob
        // Update values for the next round

            }
        
            return max (if_rob_previous,if_not_rob_previous)
        }
    }
}
