// 解法一 從前面開始檢查array裡面的value是否有等於 val 若等於則直接刪除 
// 若直接使用 for 迴圈裡面 index 來做array 地刪除的話 因為array的長度會變 所以會造成index地不準確
// 所以 再迴圈外多一個變數 若array裡面的值 = val 則刪除該value 但是index 不 + 1 若!= val 則index + 1

//解法二 從前面刪除的話index會不準!  那就從後面刪!
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {

        
        if(nums == []){
            return 0
        }
        else{
            var index = 0
            for _ in 0...nums.count-1{
                if (nums[index] == val){
                nums.remove(at:index)
                }   
                else{
                index = index + 1
                }
            }
            return nums.count
        }
        
    }
}




class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
         for index in stride(from: nums.count-1, to: -1, by: -1) {
            if(nums[index] == val){
                nums.remove(at:index)
            }
         }
         return nums.count
        
    }
}
