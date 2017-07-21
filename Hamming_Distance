//算 Hamming distance  先利用xor 相同符號為0 相異符號為1 然後再算出 xor 之後的數字有幾個1 

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        
        var xor   = x ^ y
        var count = 0
        
        
        while(xor != 0)
            {
            xor = xor & (xor-1)
            count = count+1    
            }

        return count
        
    }
}
