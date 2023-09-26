//MARK:- Approach 1:
func isPrime(_ n: Int) -> Bool {
    if n<=1 {
        return false
    }
    for i in 2..<n {
        if n%i == 0 {
            return false
        }
    }
    return true
}

/***
Time Complexity
In worst case the func executes n number of times, so the time complexity is O(n)
***/

//MARK:- Approach 2
func isPrime2(_ n: Int) -> Bool {
    if n<=1 {
        return false
    }
    
    var i = 2
    for j in i*i..<n {
        if n%j == 0 {
            return false
        }
        i += 1
    }
    return true
}

/***
Time Complexity
In worst case the func executes sqrt(n) number of times, so the time complexity is O(sqrt(n))
***/
