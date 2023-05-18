import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var wallpaper = wallpaper.map{ $0.map{String($0)} }

    var r_max = 0
    var c_max = 0
    
    var r_min = wallpaper.count
    var c_min = wallpaper[0].count
    
    for (i, r) in wallpaper.enumerated() {
        for (j, c) in r.enumerated() {
            if c == "#" {
                r_max = max(r_max, i)
                c_max = max(c_max, j)
                r_min = min(r_min, i)
                c_min = min(c_min, j)
            }
        }
    }
    
    return [r_min, c_min, r_max+1, c_max+1]
}