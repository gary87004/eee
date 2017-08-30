// 平方數會等於 1+3+5+7+9+11+13+15 ....... 

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        
        var ans   = 0
        var index = 1
        
        while(ans < num){
            ans = (1 + index) * (1 + index) / 4
            if(ans == num){
                return true
                break
            }
            index = index + 2
            
        }
        return false
        
    }
}
