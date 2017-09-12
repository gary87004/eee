// 練習用Dictionary  比較前後兩個數字 若比較小 用減的 若比較大 則用加的

class Solution {
    func romanToInt(_ s: String) -> Int {

        var roman = ["M":1000,"D":500,"C":100,"L":50,"X":10,"V":5,"I":1]
        
        var charView = Array(s.characters)

        var ans = 0
        if (charView.count == 1) {
            ans = roman[String(charView)]!
        }
        else {
            for index in 0...charView.count-2{
	            if(roman[String(charView[index])]! < roman[String(charView[index+1])]!) {
		            ans = ans - roman[String(charView[index])]!
	            }
	            else {
		            ans = ans + roman[String(charView[index])]!
	            }
            }
            ans = ans + roman[String(charView[charView.count-1])]!
        }

    return ans 
    }
}
