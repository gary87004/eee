//解法一 每次用 X*X的方法代替掉一半的次方(n/2) 次方若 <0 也需要採取動作

//解法二 最直觀 用迴圈慢慢算 但時間花太多



解法1
class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var N = n
        var X = x
        if(N == 0){
            return 1
        }
        else if(N < 0){
            N = -n
            X = 1/x
        }
        
        return (N%2 == 0) ? myPow(X*X,N/2) : X*myPow(X*X,N/2)
        

    }
}

解法2
class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var X: Double   = x
		var ans: Double = 1
        var zero_ans: Double = 1
        var N = abs(n)
    if(n > 0)
        {
        for i in 0...N-1
            {
            ans = ans*X    
            }
        }

    else if(n < 0)
        {
        for i in 0...N-1
            {
            ans = ans*X    
            }
            
            ans = 1/ans
        
        }
    else if(n == 0)
        {
            ans = zero_ans
        }
        return ans

    }
}
