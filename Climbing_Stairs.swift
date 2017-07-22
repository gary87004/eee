// 用遞迴方式複雜度太高 可以改用Fibonacci的概念

class Solution {

    func climbStairs(_ n: Int) -> Int {
        if(n == 1){
            return 1
        }
        else if(n == 2){
            return 2
        }
        var first  = 1
        var second = 2
        var third  = 0
        for i in 3...n{
            third  = first + second
            first  = second
            second = third
            }
        return second
        
    }
}

// 遞迴法
class Solution {

    func climbStairs(_ n: Int) -> Int {


         if(n == 1){
             return 1
         }
         else if(n == 2){
             return 2
         }
         else{
             return climbStairs(n-1) + climbStairs(n-2)
         }
        
    }
}
