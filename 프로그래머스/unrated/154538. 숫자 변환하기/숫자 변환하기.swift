import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {

    var dp = Array(repeating: 1000000, count: y+1)
    dp[x] = 0
    for i in x...y+1 {
        if y >= i+n {
            dp[i+n] = min(dp[i+n], dp[i] + 1)
        }
        if y >= i*2 {
            dp[i*2] = min(dp[i*2], dp[i] + 1)
        }
        if y >= i*3 {
            dp[i*3] = min(dp[i*3], dp[i] + 1)
        }
        
    }
    
    return dp[y] == 1000000 ? -1 : dp[y]
}