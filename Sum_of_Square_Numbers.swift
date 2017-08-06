// 先對數字開根號得到i 再測試c - i^2 是否為平方數 
// 若是 則 c可以被兩個平方數構成

class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        var after_sqrt_Int = Int(sqrt(Double(c)))
        var ans = true
        for number in 0...after_sqrt_Int{
            var c_minus = c - number*number

            if sqrt(Double(c_minus)) == Double(Int(sqrt(Double(c_minus)))){
	            ans = true
                break
            }
            else{
	            ans = false
            }
        }
        return ans
    }
}
