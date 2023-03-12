import Foundation

func solution(_ numbers:[Int]) -> Int {
    var array = numbers.sorted()
    let num1 = array.removeLast()
    let num2 = array.removeLast()
    return num1 * num2
}