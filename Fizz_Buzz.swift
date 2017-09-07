//解法一 不必使用到% 解法二 使用% 
// 使用append 比使用 +[] 還要快
 
class Solution {
    func fizzBuzz(_ n: Int) -> [String] {

        
        var ans = [String]()
        var fizz = 0
        var buzz = 0
        for number in 1...n{
            fizz = fizz + 1
            buzz = buzz + 1
            if(fizz == 3 && buzz == 5){
                ans.append("FizzBuzz")
                fizz = 0
                buzz = 0
            }
            else if (fizz == 3){
                ans.append("Fizz")
                fizz = 0
            }
            else if (buzz == 5){
                ans.append("Buzz")
                buzz = 0
            }
            else{
                ans.append(String(number))
                
            }
            
        }
        return ans
    }
}















class Solution {
    func fizzBuzz(_ n: Int) -> [String] {

        var ans = [String]()
        for number in 1...n{
            if(number % 15 == 0){
                ans.append("FizzBuzz")
            }
            else if (number % 3 == 0){
                ans.append("Fizz")
            }
            else if (number % 5 == 0){
                ans.append("Buzz")
            }
            else{
                ans = ans + [String(number)]
            }
            
        }
        return ans
    }
}
