//MARK: Appproach 1
func isPerfectNumber(_ n: Int) -> Bool {
    var sum = 1
    var j = 2
    while(j <= n/2) {
        if n%j == 0 {
            sum += j;
        }
        j+=1
    }
    return sum == n;
}
/***
Time Complexity
The func executes n/2 times, although the time complexity for the execution will be O(n)
***/

//MARK: Approach 2
func isPerfectNumber(_ n: Int) -> Bool {
    var sum = 1
    var j = 2
    while(j*j <= n) {
        if n%j == 0 {
            sum += (j + n/j);
        }
        j+=1
    }
    return sum == n;
}
/***
Time Complexity
The func executes sqrt of n times, so the time complexity for the execution will be O(sqrt(n))
***/
