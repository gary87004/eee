// 先利用set 將重複的數字消除掉 再一個一個index檢查
class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        if (nums1.count == 0 || nums2.count == 0){
            return []
        }
        else{
            var unique_a = Array(Set(nums1))
            var unique_b = Array(Set(nums2))
            var ans = [Int]()

            for i in 0...unique_a.count-1{
	            for j in 0...unique_b.count-1{
		            if unique_a[i] == unique_b[j]{
			            ans = ans + [unique_a[i]]
		            }
	            }
            }
        return ans
        }


    }
}
