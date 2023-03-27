func solution(_ n:Int64) -> [Int] {
    var x =  String(n).reversed().map{Int(String($0))!}
    return x
}