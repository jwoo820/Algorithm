import Foundation

struct Position: Hashable {
    var x: Int
    var y: Int
}

func solution(_ dirs:String) -> Int {
    var answer = 0
    var road = Set<[Position]>()
    var start = Position(x: 0, y: 0)
    for dir in dirs {
        var dx = 0
        var dy = 0
        switch dir {
            case "U":
            dy = 1
            case "D":
            dy = -1
            case "R":
            dx = 1
            case "L":
            dx = -1
            default:
            break
        }
        if start.x+dx > 5 || start.x+dx < -5 || start.y+dy > 5 || start.y+dy < -5 {
            continue
        }
        if !road.contains([Position(x: start.x+dx, y: start.y+dy), start]) { 
            road.insert([start, Position(x: start.x+dx, y: start.y+dy)])
        }
        
        start.x += dx
        start.y += dy
    }

    return road.count
}