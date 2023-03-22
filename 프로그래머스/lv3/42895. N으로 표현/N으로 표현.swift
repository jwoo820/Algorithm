import Foundation

func solution(_ N:Int, _ number:Int) -> Int {
    //dfs
    var min = Int.max
    var count = 0
    func dfs(_ count: Int, _ target: Int) {
        if count > 8 { return }
        if target == number {
            if count < min {
                min = count
            }
            return
        }
        var nm = 0
        for i in 0..<8{
            nm = nm*10 + N
            dfs(count + 1 + i, target + nm)
            dfs(count + 1 + i, target - nm)
            dfs(count + 1 + i, target * nm)
            dfs(count + 1 + i, target / nm)
        }
        
    }
    dfs(0, 0)
    return min == Int.max ? -1 : min
}