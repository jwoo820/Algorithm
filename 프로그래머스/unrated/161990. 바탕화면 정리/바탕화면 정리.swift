import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var x: [Int] = []
    var y: [Int] = []
    
    for i in 0..<wallpaper.count {
        let row = Array(wallpaper[i])
        for j in 0..<row.count {
            if row[j] == "#" {
                y.append(i)
                x.append(j)
            }
        }
    }
    
    // print(x)
    // print(y)

    var sortX = x.sorted()
    var sortY = y.sorted()

    // print(sortX)
    // print(sortY)
    return [sortY.first!, sortX.first!, sortY.last! + 1, sortX.last! + 1]
}