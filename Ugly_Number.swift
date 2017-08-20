// 若此數的質因數只有 2 3 5 代表被這三個數除到底會變成1

class Solution {
    func isUgly(_ num: Int) -> Bool {
        var prime = [2,3,5]
        var N = num
        for i in prime{
            while(N % i == 0 && N > 0){
                N = N / i
            }
        }
        return N == 1
    }
}
