//MARK: Approach 1
func isPerfectSquare(_ n: Int) -> Bool {
    for i in 1..<n {
        if i*i == n {
            return true
        }
    }
    return false
}
/***
Time Complexity
The func will execute n amount of time, so in worst case the time complexity is O(n)
***/

//MARK: Approach 2
func isPerfectSquare(_ n: Int) -> Bool {
    var low = 1
    var high = n
    
    while low<=high {
        var mid = (low + high)/2
        
        if mid > n/mid {
            high = mid-1
        } else if mid < n/mid {
            low = mid+1
        } else {
            return true
        } 
    }
    return false
}

/***
Time Complexity
The func will execute log(n) amount of time, so in worst case the time complexity is O(log(n))
***/
