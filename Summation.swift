//MARK: Approach 1
func summation(_ n: Int) -> Int {
  int sum = 0
  for i in 1...n {
    sum += i
  }
  return sum
}
/***
Time Complexity
The func will execute n number of times, so the time complexity will be O(n) 
***/

//MARK: Appraoch 2
func summation(_ n: Int) -> Int {
  return n*(n+1)/2;
}
/***
Time Complexity
The math operations such as multiplication, addition and division will take O(1) time, so the time complexity of the progra will be O(1) 
***/
