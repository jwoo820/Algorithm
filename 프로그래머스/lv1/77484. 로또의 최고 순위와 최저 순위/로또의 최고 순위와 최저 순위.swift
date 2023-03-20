import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var intersection = Set(lottos).intersection(Set(win_nums)).count
    var x = lottos.filter{$0 == 0}.count
    var max = 0
    var min = 0
    
    if x >= 5 {
        max = 7-(intersection + x)
        min = 6
    } else if x == 0 && intersection == 0 {
        min = 6
        max = 6
    } else {
        min = 7-intersection
        max = 7-(intersection+x)
    }
    return [max, min]

}