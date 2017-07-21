// 4的次方 取完log2 會是偶數 因此測試取完log2是否為偶數就好

class Solution {
    func isPowerOfFour(_ num: Int) -> Bool {

        var l = log2(Double(num))
        if(l.truncatingRemainder(dividingBy: 2) == 0)
            {
            return true    
                
            }
        else
            {
            return false    
            }
        
    }
}
