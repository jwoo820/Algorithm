import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var count = 0
    var t = Array(t)
    
    for i in 0...t.count-p.count {
        var word = Int(String(t[i...i+p.count - 1]))!
        if word <= Int(p)! {
            count += 1
        }
    }
    
    return count
}