import Foundation

func solution(_ book_time:[[String]]) -> Int {

    var times: [(Int, Int)] = []
    var rooms: [(Int, Int)] = []
    
    for book in book_time {
        let start = book[0].components(separatedBy: ":")
        let end = book[1].components(separatedBy: ":")
        let startTime = Int(start[0])!*60 + Int(start[1])!
        let endTime = Int(end[0])!*60 + Int(end[1])! + 10
        times.append((startTime, endTime))
    }
    
    times.sort{ $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0 }
    
    for (index, time) in times.enumerated() {
        
        if let i = rooms.firstIndex{ $0.1 <= time.0 } {
            rooms[i] = time
        } else {
            rooms.append(time)
        }
        
    }

    return rooms.count
}