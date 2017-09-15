// 12 --> 1100 --> 0011 --> 3  =  15-12 --> (2^4-1) - 12

// 35 --> 100011 --> 011100 --> 28 = 63-35 --> (2^6-1) - 35

// 遇到二的次方不能用



class Solution {
    func findComplement(_ num: Int) -> Int {
        if( num&(num-1) == 0 ) {
            return num-1
        }
        else {
            var i = 0.0
            var j = 0.0
        while (i < Double(num)) {
	        i = pow(2.0,j)
	        j = j + 1
        }

        var IntOfi = Int(i)
        
        return IntOfi - 1 - num
    
        }
    }
}
