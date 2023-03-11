import Foundation

func solution(_ sides:[Int]) -> Int {
    var sort = sides.sorted()
    

    return sort[0] + sort[1] <= sort[2] ? 2 : 1
}