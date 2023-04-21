import Foundation

func solution(_ s:String) -> Int {
    var answer = 0
    var rotate = s.map{String($0)}

    for i in Array(s) {
        var stack: [String] = []
        
        rotate.removeFirst()
        rotate.append(String(i))
        
        for r in rotate {
            if stack.isEmpty {
                stack.append(r)
            } else if stack.last! == "(" && r == ")" {
                stack.removeLast()
            } else if stack.last == "{" && r == "}" {
                stack.removeLast()
            } else if stack.last == "[" && r == "]" {
                stack.removeLast()
            } else {
                stack.append(r)
            }
        }
        if stack.isEmpty { answer += 1}
    }
    
    return answer
}