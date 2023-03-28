func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64( b > a ? (a...b).reduce(0, +) : (b...a).reduce(0, +))
}