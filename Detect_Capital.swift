//給三種標準答案 一一檢視是否有等於標準答案

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        var uppercase = word.uppercased()
        var lowercase = word.lowercased()

        var upperchar  = Array(uppercase.characters)
        var lowerchar  = Array(lowercase.characters)
        
        upperchar.removeSubrange(1..<upperchar.count)
        lowerchar.removeFirst()
        var ans3 = String(upperchar+lowerchar)
        
        if(word == uppercase || word == lowercase || word == ans3){
            return true
        } 
        else{
            return false
        }
        
        
        
        
        
        
        //         var char = Array(word.characters)
        
//         for i in 0...char.count-1{
//             if(char[i] >= "A" && char[i] <= "Z")
            
            
            
        // }

    }
}
