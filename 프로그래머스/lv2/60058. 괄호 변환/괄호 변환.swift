import Foundation

func solution(_ p:String) -> String {
    if isPair(p) { return p }
    
    var v = p
    var u = String(v.removeFirst())
    // 2번
    while u.filter{ $0 == "(" }.count != u.filter{ $0 == ")" }.count {
        u.append(v.removeFirst())
    }
    // 3번
    if isPair(u) {
        return u + solution(v)
    } else {    // 4-1, 2, 3
        var temp = "(" + solution(v) + ")"
        u.removeFirst()
        u.removeLast()
        // 4-4
        u = u.map { $0 == "(" ? ")" : "(" }.joined()
        return temp + u
    }
}

// 올바른 문자열 체크
func isPair(_ p: String) -> Bool {
    if p.isEmpty { return true }
    var p = p
    var stack: [String] = []
    while !p.isEmpty {
        let first = String(p.removeFirst())
        if stack.isEmpty { stack.append(first) }
        else if stack.last! == "(" && first == ")" { stack.removeLast() }
        else { stack.append(first) }
    }
    
    return stack.isEmpty
}