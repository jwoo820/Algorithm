import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var arr = park.map{ Array($0) }
    var start = (0, 0)
    var dic = ["N": (-1, 0), "S": (1, 0), "E": (0, 1), "W": (0, -1)]
    for (i, row) in arr.enumerated() {
        for (j, col) in row.enumerated() {
            if col == "S" { 
                start = (i, j)
                break
            }
        }
    }
 
    for route in routes {
        let split = route.components(separatedBy: " ")
        let dir = split[0]
        let dis = Int(split[1])!
        var check = true
        for i in 1...dis {
            let nx = start.0 + dic[dir]!.0*i
            let ny = start.1 + dic[dir]!.1*i
            
            if nx < 0 || ny < 0 || nx >= arr.count || ny >= arr[0].count || 
                arr[nx][ny] == "X" {
                check = false
            }
        }
        if check {
            start.0 += dic[dir]!.0*dis
            start.1 += dic[dir]!.1*dis
        }
    }
    return [start.0, start.1]
}