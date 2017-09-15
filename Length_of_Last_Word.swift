// 先將最後面的空白刪除 再一一計算

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var ans = 0
        var arr = Array(s.characters)
        for i in stride(from: arr.count-1, to: -1, by: -1) {
	        if (arr[i] == " ") {
		        arr.remove(at :i)
            }
	        else {
		        break
	        }

        }


        for i in stride(from: arr.count-1, to: -1, by: -1) {
            if (arr[i] == " ") {
		        break
	        }
	        ans = ans + 1
        }
        return ans
        
    }
}
