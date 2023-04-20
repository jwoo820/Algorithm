import Foundation

func solution(_ word:String) -> Int {
    // AA
    var book = ["A", "I", "E", "O", "U"]
    var words: [String] = []
    
    func dfs(_ arr: [String]) {
        if arr.count > 5 {
            return
        }
        words.append(arr.joined())
        
        for i in 0..<book.count {
            dfs(arr+[book[i]])
        }
    }
    
    dfs([])
    var sort = words.sorted()

    return sort.firstIndex(of: word)!
}