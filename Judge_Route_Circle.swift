// 簡單的switch

class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var Arr = Array(moves.characters)
        var u = 0
        var d = 0
        var l = 0
        var r = 0
        for move in Arr {
	        switch move {
		        case "U":
			        u = u + 1
		        case "D":
			        d = d + 1
		        case "L":
			        l = l + 1
		        case "R":
			        r = r + 1
		        default:
			        break
		
	        }
        }

        return u == d && r == l ? true : false
    }
}
