// 糖果個數為偶數 代表兩人所得到的糖果個數都是 candies.count/2 糖果種類個數 kind
// 若每人糖果個數 > kind 代表 每人最多就是拿到kind 
// 若每人糖果個數 < kind 代表 其中一人的每個糖果都是不同種類
class Solution {
    func distributeCandies(_ candies: [Int]) -> Int {
        var half = candies.count/2
        var kind = Set(candies).count
        // if(half >= kind){
        //     return kind
        // }
        // else{
        //     return half
        // }
        return min(half,kind)
        
    }
}
