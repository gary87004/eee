class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var y = 0
        var X = x
        while(X > 0) {
            y = y*10 + X%10
            X = X/10
        }
        
        
        return y == x 
    }
}
