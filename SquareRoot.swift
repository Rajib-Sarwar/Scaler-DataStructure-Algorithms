//Approach 1
func SquareRoot(_ A: Int) -> Int {
        var low = 1
        var high = A

        while(low<=high) {
            var mid = (low+high)/2
            
            if(mid*mid > A) {
                high = mid - 1
            } else if (mid*mid < A) {
                low = mid + 1
            } else {
                return mid
            }
        }
        return -1
}

/***
Time Complexity
The program eliminates half of the possibilities on every execution, so that time complexity is O(log(n))
***/

//Improvement
func SquareRoot(_ A: Int) -> Int {
        if A == 1 { return 1 }
        var low = 1
        var high = A/2

        while(low<=high) {
            var mid = (low+high)/2
            
            if(mid*mid > A) {
                high = mid - 1
            } else if (mid*mid < A) {
                low = mid + 1
            } else {
                return mid
            }
        }
        return -1
}
/***
Time complexity remains same as previous solution
***/
