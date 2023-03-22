func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    // AND 연산
    for i in 0..<n {
        var radix = String(arr1[i] | arr2[i], radix: 2)
        var map = radix.map{$0=="1" ? "#" : " "}.joined()
        map = String(repeating: " ", count: n-map.count) + map
        // print(radix)
        // print(map)
        answer.append(map)
    }
    return answer
}