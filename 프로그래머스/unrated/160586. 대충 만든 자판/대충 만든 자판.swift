import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var keyboard: [Character: Int] = [:]
    var answer: [Int] = []
    for map in keymap {
        for (offset, value) in map.enumerated() {
            if keyboard[value, default: 100] > offset {
                keyboard[value] = offset + 1
            }
        }
    }

    // print(keyboard)
    
    for target in targets {
        var count = 0
        for c in target {
            // 키보드가 없을 때
            if keyboard[c] == nil {
                count = -1
                break
            } else {
                count += keyboard[c]!
            }

        }
        
        answer.append(count)
    }
    return answer
}