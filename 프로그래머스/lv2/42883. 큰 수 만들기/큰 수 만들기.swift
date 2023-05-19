import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var stack: [Character] = []
    
    var k = k
    
    for num in number {
        while !stack.isEmpty && stack.last! < num && k > 0 {
            stack.removeLast()
            k -= 1
        }
        stack.append(num)
    }
    
    if k != 0 {
        for i in 0..<k {
            stack.removeLast()
        }
    }
    
    return stack.map{String($0)}.joined()
}