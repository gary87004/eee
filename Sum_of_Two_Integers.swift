// 不用 + 
// 用xor and 實作加法

class Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        var sum   = 0
        var carry = 0
        var a_const = a
        var b_const = b
		repeat
            {
            sum = a_const ^ b_const
            carry = (a_const & b_const) << 1
            a_const = sum
            b_const = carry    
            }while(carry != 0)
        return sum
    }
}
