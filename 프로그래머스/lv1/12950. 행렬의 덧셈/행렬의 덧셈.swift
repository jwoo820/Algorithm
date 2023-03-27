func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    // [1, 2]  [3, 4]
    // [2, 3]  [5, 6]
    
    var arr = zip(arr1, arr2).map{ zip($0, $1).map{$0 + $1} }
    
    
    return arr
}