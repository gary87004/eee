// binary search

class Solution {
    func mySqrt(_ x: Int) -> Int {
        var L = 0
        var H = x
        
        while(L <= H){
            var M = (L+H) / 2
            if(M * M == x){
                return M
                
            }
            else if(M*M > x){
                H = M-1
            }
            else if(M*M < x){
                L = M+1
            }
            
        }
        return L-1
        
        
    }
}
