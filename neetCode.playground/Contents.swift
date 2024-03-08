
    func containsDuplicate(_ nums: [Int]) -> Bool {

        var i = 0
        var x = 0

        if i < nums.count {

            var j = i+1
            

            if j < nums.count{

                if nums[i] == nums[j]{
                    
                    x += 1
                }
                j += 1

            }

            
            i += 1

        }

        if x > 0 {
            return true
        }
        
        else {
            
            return false
        }
        
        
    }

print(containsDuplicate([1,3,1,2]))
