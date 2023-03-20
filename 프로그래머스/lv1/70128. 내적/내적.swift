import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var ab = Array(zip(a, b))

    return zip(a,b).reduce(0){$0 + $1.0 * $1.1}
}