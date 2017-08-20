// outer 表示 對於 <n 的數字一個一個檢查 inner 表示 檢查那個數字是否為質數 不必檢查到outer-1 檢查到取根號即可

class Solution {
    func countPrimes(_ n: Int) -> Int {
        if(n <= 2){
            return 0
        }
        else if(n == 3){
            return 1
        }
        else{
        var ans = 0
        var bool = true
        for outer in 2...n-1{
	        for inner in 2...Int(sqrt(Double(outer)))+1{
		        if(outer % inner == 0){
			        bool = false
			        break
		        }
	        }
	        if(bool == true){
		        ans = ans + 1
	        }
	        bool = true
        }
        return(ans + 1)
        }
    } 
}
