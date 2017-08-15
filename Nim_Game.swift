// 剩4個的倍數 先開始的人都會輸
class Solution {
    func canWinNim(_ n: Int) -> Bool {
        return n % 4 == 0 ? false : true
    }
}
