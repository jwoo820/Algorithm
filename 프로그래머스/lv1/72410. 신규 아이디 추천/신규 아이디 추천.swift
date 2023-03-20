import Foundation

func solution(_ new_id:String) -> String {
    //1, 2
    var id = new_id.lowercased()
            .filter{$0 == "-" || $0 == "_" || $0 == "." || $0.isLetter || $0.isNumber}

    // 3
    while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }
    // 4 
    if id.first == "." {
        id.removeFirst()
    }
    
    if id.last == "." {
        id.removeLast()
    }
    // 5 
    if id.isEmpty {
        id = "a"
    }
    // 6
    if id.count > 15 {
        id = String(id.prefix(15))
        if id.last == "." {
            id.removeLast()
        }
    }
    // 7
        while id.count < 3 {
            id.append(id.last!)
        }
    
    return id
}