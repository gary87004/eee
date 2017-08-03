// 先檢查array內是否有0 若有0 則在array後先補上0 並把0所在的index記錄下來
// 若 index 為空array 則直接回傳原array
// 若 array 有東西 則先將index array reverse 再依序remove掉裡面的值
// 若不先將 index array reverse 直接刪除的話 會發生 目標值的index 隨著 刪除的動作而改變
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var size = nums.count
        var index = [Int]()

        for i in 0...size-1{
	        if(nums[i] == 0){
		        nums = nums + [0]
		        index = index + [i]
	        }
	    }
        
        if(index.isEmpty){
            }
        else{
            index.reverse()
            for i in 0...index.count-1{
            nums.remove(at:index[i])
	        }
        }
    }
}
